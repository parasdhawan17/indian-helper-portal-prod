# IndianHelper SG — Real Website (Production)

> **This is the real website project.** It is separate from the demo.
>
> - **Demo (frozen, sample data only):** https://indian-helper-portal.vercel.app — repo `parasdhawan17/indian-helper-portal` (tagged `demo-v1`).
> - **Real site (this repo):** deployed from here to its own Vercel project; a custom domain is added once chosen.
> - **Rule that must never break:** no demo sample data — no fictional profiles, no sample phone numbers — ever enters this repo's database. The real site launches with zero profiles and grows only through verified, consenting, real helpers.

## What this product is

An internet portal (not an employment agency) where Indian domestic helpers in Singapore are found by Singapore employers:

- Helpers create profiles **free, forever**. Employers read full profiles free and **pay only to reveal a contact number** (INR via UPI: ₹499 single / ₹1,499 for 5 / ₹2,499 for 10).
- Employers can also leave detailed feedback, including a reference number that is shown **only** to employers who reveal that helper's number.
- Suppliers (a separate track, see `docs/product-document.md` §20) pay **₹999/month via UPI AutoPay** to keep **unlimited** profiles active; their profiles use "Request a callback" instead of a reveal, and employer numbers are masked until the supplier's subscription is active.
- The portal also teaches employers the hiring process (Journey Hub: eligibility, costs, interviews, MOM steps, first 90 days) — it explains and tracks, it never does a step for the employer.

Full specification: `docs/product-document.md` (PRD v1.5). Market and legal research: `docs/knowledge-document.md`. Architecture: `docs/ARCHITECTURE.md`.

## Stack

- **Frontend:** React + Vite + Tailwind (the demo's UI is ported in Phase 1 with all sample data stripped).
- **Backend / database:** Supabase (Postgres + Auth + Storage + Row Level Security). Schema: `db/schema.sql`.
- **Payments:** Razorpay — UPI one-time packs + UPI AutoPay subscriptions. Webhooks verify every payment before credits or subscription months activate.
- **Messaging:** WhatsApp (Cloud API) for reconfirm reminders and callback alerts; email for receipts.
- **Hosting:** Vercel (this repo's project). Deployments are automatic once the Vercel–GitHub integration is installed (see ARCHITECTURE.md).

## Repository layout

```
docs/                 Knowledge document, product document (PRD), architecture
db/schema.sql         Initial Postgres schema (Supabase) — run in the SQL editor
src/                  Frontend source (Phase 0 scaffold; full app lands in Phase 1)
.env.example          Required environment variables (never commit real values)
```

## Setup (Phase 0)

1. Create a Supabase project (dashboard) and run `db/schema.sql` in its SQL editor.
2. Copy `.env.example` to `.env` and fill in the Supabase URL/anon key.
3. `npm install && npm run dev`
4. Connect this repo to Vercel (install the GitHub integration so pushes auto-deploy) and add the custom domain when chosen.
5. Razorpay: create the account, complete KYC for the business entity, add test keys first, then live keys. Never put keys in the repo — Vercel environment variables only.

## Environments

- `main` → production. Feature work happens on branches and merges via pull request.
- The demo repo is **not** an environment of this project. Nothing syncs between them.

## Legal notes (read before launch)

- The direct-helper side is a pure listing portal, not an employment agency (Route A).
- The supplier track needs a separate Employment Agencies Act legal review before real launch (PRD §20). Launch the direct side first if that review is pending.
- Singapore PDPA + India's DPDP Act apply: consent for phone numbers, reference numbers and photos; deletion on request; see the PRD for the full rules.
