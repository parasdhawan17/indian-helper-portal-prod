-- IndianHelper SG — initial Postgres schema (Supabase)
-- Run in the Supabase SQL editor. RLS is enabled on every table; write
-- the actual policies in a follow-up migration once auth is wired.
-- Design rules (see docs/ARCHITECTURE.md):
--   * phone numbers are never publicly readable (reveal-gated access only)
--   * money tables are append-only
--   * profiles are a state machine; only 'live' rows appear in search
--   * feedback is moderated before publishing

create extension if not exists pgcrypto;

-- ---------------------------------------------------------------- users
create table public.users (
  id uuid primary key default gen_random_uuid(),
  role text not null check (role in ('helper', 'employer', 'supplier', 'admin')),
  phone text not null unique,
  phone_verified_at timestamptz,
  email text,
  display_name text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- ------------------------------------------------------- helper profiles
create table public.helper_profiles (
  id uuid primary key default gen_random_uuid(),
  owner_id uuid not null references public.users (id),
  listed_by_supplier_id uuid references public.users (id), -- null = direct profile
  first_name text not null,
  age int check (age >= 18 and age <= 70),
  state text not null,
  status text not null default 'draft'
    check (status in ('draft', 'pending', 'live', 'paused', 'hired', 'expired')),
  location text not null default 'Singapore', -- 'Singapore' | 'India'
  availability_text text not null default '',
  main_job text not null,
  expected_salary_sgd int not null check (expected_salary_sgd > 0),
  expected_rest_days int not null check (expected_rest_days between 1 and 4),
  years_in_singapore int not null default 0,
  total_years int not null default 0,
  languages jsonb not null default '[]',   -- [{language, level}]
  cuisines text[] not null default '{}',
  veg boolean not null default false,
  jain boolean not null default false,
  handles_pork boolean not null default false,
  handles_beef boolean not null default false,
  skills jsonb not null default '[]',      -- [{name, level}]
  about text not null default '',
  work_history jsonb not null default '[]',
  expects text not null default '',
  photo_url text,
  -- Reveal-gated: served only to employers holding a valid reveal.
  phone_encrypted text, -- encrypted at rest; never selected for anonymous users
  last_confirmed_at timestamptz,           -- 14-day reconfirm stamp source
  moderation_notes text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
create index helper_profiles_search_idx
  on public.helper_profiles (status, state, main_job, expected_salary_sgd)
  where status = 'live';

-- ------------------------------------------------------------- feedback
create table public.feedback (
  id uuid primary key default gen_random_uuid(),
  helper_id uuid not null references public.helper_profiles (id),
  employer_name text not null,             -- stored full; shown as first name + initial
  employer_area text not null,
  period_employed text not null,
  rating int not null check (rating between 1 and 5),
  category_ratings jsonb not null default '{}', -- cooking/cleaning/care/reliability/communication
  strengths text[] not null default '{}',
  improvements text[] not null default '{}',
  improve_text text not null default '',
  review_text text not null,
  recommend boolean not null,
  rehire boolean not null,
  -- Reveal-gated like helper phones: shown only to employers who revealed
  -- this helper. Collected only with the consent wording in the PRD (§9.6).
  ref_phone_encrypted text,
  status text not null default 'pending'
    check (status in ('pending', 'published', 'rejected')),
  reported_count int not null default 0,
  created_at timestamptz not null default now()
);
create index feedback_helper_idx on public.feedback (helper_id, status);

-- -------------------------------------------------------------- reveals
create table public.reveals (
  id uuid primary key default gen_random_uuid(),
  employer_id uuid not null references public.users (id),
  helper_id uuid not null references public.helper_profiles (id),
  credits_spent int not null default 1,
  status text not null default 'active' check (status in ('active', 'reversed')),
  reversed_reason text,
  created_at timestamptz not null default now(),
  unique (employer_id, helper_id) -- a helper's number is revealed once per employer
);

-- -------------------------------------------------------- credits ledger
create table public.credits_ledger (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.users (id),
  delta int not null,                      -- +purchase, -spend, +restore
  reason text not null,                    -- purchase | reveal | invalid_number_restore | refund
  reference_id uuid,                       -- reveal id / payment id
  razorpay_payment_id text,
  created_at timestamptz not null default now()
);
create index credits_ledger_user_idx on public.credits_ledger (user_id, created_at);

-- ------------------------------------------------- supplier subscriptions
create table public.supplier_subscriptions (
  id uuid primary key default gen_random_uuid(),
  supplier_id uuid not null references public.users (id),
  plan_price_inr int not null default 999,
  status text not null default 'inactive'
    check (status in ('active', 'inactive', 'lapsed', 'cancelled')),
  razorpay_subscription_id text,
  current_period_start timestamptz,
  current_period_end timestamptz,
  auto_renew boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- -------------------------------------------------------------- callbacks
create table public.callbacks (
  id uuid primary key default gen_random_uuid(),
  helper_id uuid not null references public.helper_profiles (id),
  supplier_id uuid not null references public.users (id),
  employer_name text not null,
  employer_phone_encrypted text not null, -- masked until unlocked by active subscription
  preferred_time text,
  message text not null default '',
  unlocked_at timestamptz,                -- null = still masked
  created_at timestamptz not null default now()
);
create index callbacks_supplier_idx on public.callbacks (supplier_id, created_at desc);

-- ---------------------------------------------------------------- reports
create table public.reports (
  id uuid primary key default gen_random_uuid(),
  reporter_id uuid references public.users (id),
  target_type text not null,               -- profile | feedback | user
  target_id uuid not null,
  reason text not null,
  status text not null default 'open' check (status in ('open', 'resolved', 'dismissed')),
  created_at timestamptz not null default now()
);

-- ----------------------------------------------------------------- guides
create table public.guides (
  id uuid primary key default gen_random_uuid(),
  slug text not null unique,
  title text not null,
  stage int not null,                      -- Journey Hub stage 0..6
  body_markdown text not null,
  source_url text,
  last_verified_at date,
  published boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- -------------------------------------------------------------- audit log
create table public.audit_log (
  id uuid primary key default gen_random_uuid(),
  actor_id uuid references public.users (id),
  action text not null,
  target_type text,
  target_id uuid,
  detail jsonb not null default '{}',
  created_at timestamptz not null default now()
);

-- RLS on everything (policies to be added with auth wiring).
alter table public.users enable row level security;
alter table public.helper_profiles enable row level security;
alter table public.feedback enable row level security;
alter table public.reveals enable row level security;
alter table public.credits_ledger enable row level security;
alter table public.supplier_subscriptions enable row level security;
alter table public.callbacks enable row level security;
alter table public.reports enable row level security;
alter table public.guides enable row level security;
alter table public.audit_log enable row level security;
