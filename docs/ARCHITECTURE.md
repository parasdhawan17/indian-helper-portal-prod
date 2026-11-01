# Architecture — IndianHelper SG (real website)

## Separation from the demo

| | Demo | Real (this repo) |
|---|---|---|
| Repo | `parasdhawan17/indian-helper-portal` | `parasdhawan17/indian-helper-portal-prod` |
| Live URL | https://indian-helper-portal.vercel.app | Own Vercel project + custom domain (TBD) |
| Data | `localStorage`, 14 fictional profiles, sample numbers | Supabase Postgres, real verified profiles only |
| Payments | Mock UPI modal | Razorpay live + webhooks |
| Deploys | Manual file upload | GitHub integration → auto-deploy (install it once) |

The demo is frozen at tag `demo-v1`. Nothing syncs between the two projects.

## Stack

- **Frontend:** React 19 + Vite + Tailwind CSS, HashRouter-free (real site uses BrowserRouter; clean URLs matter for SEO). Ported from the demo UI in Phase 1, sample data removed.
- **Database/Auth/Storage:** Supabase. Postgres with Row Level Security (RLS) on every table. Auth by phone OTP (MSG91/Twilio for +91/+65) + email. Photos/video in Supabase Storage, moderated before public.
- **Payments:** Razorpay. One-time UPI packs (employer reveals) and UPI AutoPay subscriptions (supplier monthly). A Supabase Edge Function receives Razorpay webhooks, verifies signatures, and only then writes credits / subscription months. The frontend never grants access on its own say-so.
- **Messaging:** WhatsApp Cloud API (reconfirm reminders, callback alerts, reveal confirmations); email (Resend) for receipts.
- **Jobs:** Supabase Edge Functions on schedule — nightly subscription lapse job (deactivate profiles whose month ended), 14-day reconfirm reminders, feedback moderation reminders, guide re-verification reminders (90-day cycle).

## Environments

- `main` branch → production Vercel deployment.
- Feature branches → preview deployments.
- `.env` (local) and Vercel environment variables hold secrets. `.env.example` lists every required key. No secrets in git, ever.

## Database schema

See `db/schema.sql`. Design rules enforced there and in RLS:

1. **Phone numbers are never publicly readable.** `helper_profiles.phone` and `feedback.ref_phone` are served only through a reveal-gated function/view: the caller must hold a valid reveal (direct) or an active subscription (supplier callback). Everything else reads masked values.
2. **Money is append-only.** `credits_ledger` and `subscription_events` are insert-only; refunds/restores are new rows with reasons, never edits.
3. **Profiles are state machines.** `draft → pending → live → paused | hired | expired`. Only `live` rows appear in search. `last_confirmed_at` drives the availability stamp and the 14-day expiry job.
4. **Feedback is moderated.** `feedback.status`: `pending → published | rejected`. Published feedback is immutable except by admin action (logged).
5. **Everything sensitive is audited.** `audit_log` records admin actions, credit restores, bans, and reveal anomalies.

## Core flows (real versions of the demo flows)

- **Helper onboarding:** OTP signup → profile wizard → photo upload → moderation queue → live. Helper can reconfirm availability (one tap), pause, hide, delete.
- **Employer reveal:** browse free → tap Reveal → login (OTP) → buy pack (Razorpay UPI) → webhook → credits → reveal → number + Call/WhatsApp + feedback references unlocked (references share the same reveal record).
- **Feedback:** helper shares `/feedback/<id>` → employer submits (category ratings, strengths, improvements, hire-again, reference number with consent) → moderation queue → published → reference number gated behind reveal.
- **Supplier:** signup → dashboard → add profiles (free) → pay ₹999/month subscription (Razorpay AutoPay) → profiles active + unlimited unlocks while active → lapse job deactivates → renew reactivates. Callback: employer requests (free) → supplier inbox, masked number → unlock included while subscribed.
- **Journey Hub:** guides as content rows with `source_url` and `last_verified_at`; 90-day re-verification job flags stale guides for review.

## Security checklist (before launch)

- RLS enabled on all tables; service-role key used only in Edge Functions.
- Rate limits on reveal, feedback submission, callback requests, OTP sends.
- Razorpay webhook signature verification; idempotent webhook handling (same event twice = one effect).
- No bulk export endpoints; search results paginated and capped.
- Backups: Supabase daily backups on; test a restore before launch.
- Privacy pages (Terms, Privacy, data-deletion request flow) live before any real profile goes public.

## Phase plan

- **Phase 0 (done in this repo's skeleton):** repos, docs, schema, env template, scaffold deploy.
- **Phase 1:** auth + schema + storage + admin console skeleton + demo UI ported with sample data stripped.
- **Phase 2:** employer money flows + feedback/reference gating + search + reconfirm jobs.
- **Phase 3:** supplier subscriptions + dashboard + callbacks + Journey Hub content.
- **Phase 4:** hardening (moderation, reports, rate limits, backups, monitoring, privacy pages, QA).
- **Phase 5:** soft launch — first real helpers onboarded, then employers.

## Open decisions (need the owner)

1. Final brand name + domain.
2. Business entity for Razorpay KYC.
3. Supplier track at day-one launch, or direct-only first (recommended: direct first, pending EA legal review).
4. iOS day-one vs fast-follow (web + Android first per PRD).
