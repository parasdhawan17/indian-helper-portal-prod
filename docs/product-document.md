# Product Document — Indian Helper Portal (Singapore)
## An internet portal, not an employment agency

**Working title:** Indian Helper Portal *(final name and domain — to be decided, see §18)*
**Version:** 1.5 — 27 October 2026 *(v1.1 added §9A, the employer hiring-process help module. v1.2 changed the portal’s own pricing to INR with UPI payments. v1.3 added: prominent visual Skills section, employer feedback via shareable link (§9.4, §9.6), and the supplier-listed profiles / callback model (§20) — read §20 against the §3 not-an-agency rule before any real launch. v1.4 changed how suppliers pay in §20: a ₹999/month subscription (UPI) keeps unlimited profiles active with unlocks included, replacing the per-unlock credit. v1.5 expands §9.6 feedback: category ratings, extensive strengths and areas-to-improve, hire-again, and employer reference numbers gated behind the helper reveal.)*
**Status:** Product definition. Ready for design and MVP scoping.
**Companion document:** *Hiring a Domestic Helper in Singapore — Knowledge Document* (26 Oct 2026) — the MOM rules, costs, Facebook-group behaviour and competitor research this product is built on.
**Platforms:** Website + mobile app (Android and iOS), one shared backend.

> **Decisions already locked in this document**
> 1. The product is an **internet portal only — not an employment agency**. It does not place helpers, does not match on anyone’s behalf, does not handle paperwork.
> 2. **Helpers pay nothing. Ever.** No fee to create a profile, no fee to be listed, no fee when they are contacted, no fee when they are hired.
> 3. **Employers browse and read full profiles for free.** They **pay only to reveal a helper’s contact number**.
> 4. The portal is **specifically for Indian helpers** — Indian-national domestic helpers, and the employers in Singapore who are looking for an Indian helper.
> 5. It ships as **both a website and an app**, on the same account and the same data.
> 6. It is an **Indian website: the portal charges in INR (₹) and is paid via UPI** (UPI-first checkout, Indian PSP). Helper salaries and MOM costs remain in SGD — they are Singapore amounts.
> 7. The portal **actively helps employers understand the full hiring process** — eligibility, types of hire, total cost, interviewing, terms to agree, the MOM steps, and the first 90 days — through free guides, a step-by-step process tracker, a cost calculator, interview kits and a terms template (full spec in §9A). Help means the employer **learns and tracks the process himself**. It never means the portal does a step for him (§3.2).

---

## 1. What this product is, in one paragraph

A self-service listing portal where an Indian domestic helper in (or wanting to work in) Singapore creates her own free profile — skills, experience, languages, expected salary, rest days, availability — and an employer in Singapore searches those profiles with filters, reads any profile in full for free, and pays a small fee only when he/she wants to reveal that helper’s phone / WhatsApp number and contact her directly. The portal never speaks to either side on the other’s behalf, never negotiates, never submits a Work Permit application, and never takes a fee from a successful hire. Discovery and first contact are the paid product. **Employer education is the free product around it:** the portal teaches the employer the whole hiring process — whether he is eligible, what a transfer vs an overseas hire involves, what it will really cost, how to interview, what terms to agree in writing, and the exact MOM steps with their deadlines — and gives him a tracker, a cost calculator and templates to do it himself (§9A). Everything after the reveal — interview, agreement, MOM paperwork — still happens directly between employer and helper. The portal explains and tracks; the employer does.

## 2. Why this niche: Indian helpers, Singapore employers

**The assumption this document is built on (stated openly):** the job is in **Singapore**, under MOM rules. The helper is an **Indian national**. The employer is a household in Singapore. That is the market the knowledge document researched, and it is a specific, underserved slice of it:

- **India is an MOM-approved source country**, but the big general portals and agency biodata pools are dominated by Filipino, Indonesian and Myanmar helpers. Indian helpers are a minority supply that is hard to search for specifically — on Facebook they are buried in general transfer groups.
- **Demand is specific and cultural, not generic.** Employers who search “Indian helper” usually want one or more of: **Indian cooking** (North Indian / South Indian, veg and non-veg, Jain / no onion-garlic, festival cooking), a **language** (Hindi, Punjabi, Tamil, Telugu, Malayalam, Bengali), **vegetarian food handling** and separation, familiarity with Indian festivals, pooja routines and elderly Indian parents’ habits, and care for parents who may speak no English.
- **Supply is specific too.** Indian helpers in Singapore come mainly from Punjab, Tamil Nadu, Kerala, Andhra Pradesh / Telangana, West Bengal and the North-East. Their languages, cuisines, religions (Hindu, Sikh, Christian, Muslim) and dietary handling (many will not handle beef; some will not handle pork) are exactly the fields a general portal treats as generic “nationality: Indian” — here they are the product.
- **A niche is defensible at launch.** One community, one language/food logic, one referral network (Indian condos, temples, gurudwaras, churches, Indian associations in Singapore). It is far easier to seed the first 200 real profiles in one community than 2,000 across four nationalities.

**Explicitly out of geography for now:** hiring a domestic helper *inside India* (Delhi, Mumbai, Bengaluru etc.) is a completely different market — no Work Permit, no MOM, different law, different pricing in ₹, different competitors. It is **not** a feature flag on this product. If it is wanted later, it needs its own product document. See §17.

## 3. The “not an agency” rule — how it shapes every feature

This is a product constraint, not just legal wording. It comes from the Employment Agencies Act analysis in the knowledge document (§11): operating an unlicensed employment agency in Singapore carries a fine of up to S$80,000 and/or jail up to 2 years, and activities that can count as agency activity include collecting resumes to help someone find a job, assisting to place a jobseeker with an employer, and submitting Work Pass applications for others.

### 3.1 What the portal DOES

- Lets helpers **publish their own profiles themselves**.
- Lets employers **search, filter, read and shortlist themselves**.
- **Sells the employer a contact reveal** — the digital equivalent of a listing fee.
- Provides **free, general information**: MOM guides, checklists, interview questions, contract points to discuss. Information is published to everyone, not advice given to one employer about one helper.
- **Teaches the hiring process as a structured journey (§9A)**: eligibility and cost explainers, a transfer-vs-overseas comparison, a cost calculator, interview kits by main job, a terms-to-agree template, step-by-step MOM process trackers (transfer and overseas versions) with deadline calculation, and a first-90-days checklist. All of it is self-service content and tools the employer operates himself, sourced from and linked to MOM.
- Provides technical tools both sides operate themselves: favourites, alerts, in-profile “last active / still available” status.

### 3.2 What the portal NEVER does

| Never | Why |
|---|---|
| Charge a helper anything, at any stage | Locked decision; also the fastest way to become agency-like and to lose trust in this community |
| Charge a success / placement fee when a hire happens | Looks like a placement fee — moves the product toward agency activity |
| Staff or “concierge” shortlisting — “send us your requirement, we will find you a helper” | That is placement assistance, done by a person on an employer’s behalf |
| Recommend one specific helper to one specific employer as a service | Same as above. *Automated, user-controlled search sorting and filters the employer sets himself are fine — that is search, not placement.* Keep copy as “search / sort / filter”, never “we matched you” as a human service promise |
| Collect biodata / resumes **on behalf of** an employer, or forward profiles to employers off-platform | Named agency-type activity |
| Submit Work Permit / IPA applications, book SIP or medicals, arrange flights, hold a security bond | Agency / employer work. The portal links to MOM and explains the steps; it does not do them |
| “Help with the process” by portal staff for one employer’s specific hire — reviewing his documents, telling him what to file, chasing his case, speaking to MOM or the helper for him | Process help (§9A) is published content, calculators and a tracker he operates himself. The moment a person does or advises on *his* case, it is a service, not a portal. Support may explain how a guide or tracker works; it may not advise on his hire |
| Negotiate salary or rest days between the sides, hold salary, hold passports/documents, handle loans | Never, in any version |
| Call itself an “agency”, “maid agency”, “placement service”, or use licence-like language | Positioning and copy are part of staying a portal. Required footer line on web, app and all marketing: *“[Name] is an internet listing portal. It is not an employment agency and does not hold an MOM employment agency licence. Employers and helpers connect and make their own arrangements directly.”* |

### 3.3 Copy rules (apply in UI, app-store listing, ads)

- Use: **list, browse, search, filter, view profile, reveal contact, contact directly**.
- Do not use: **place, recruit, deploy, supply, provide a maid, hire through us, we will find you, guaranteed replacement**.
- Never market helpers like goods: no “cheap Indian maid”, no price-tag grids, no sale language. MOM has fined an agent S$20,000 for undignified marketing of helpers on a goods platform. Profiles are people’s job profiles — photo, first name, story, skills — in that order.

## 4. Users and personas

### 4.1 Side A — the helper (supply, free)

Indian-national women who are one of:

- **Transfer helper** — already in Singapore on a Work Permit, finishing a contract or with her current employer’s consent to transfer. *This is the launch supply: fastest hires, in-person interviews possible.*
- **Finished-contract helper** — the most wanted sub-type of transfer.
- **Ex-Singapore helper, now in India** — worked in Singapore before, wants to return.
- **Fresh helper in India** — never worked in Singapore. Allowed to create a profile in the MVP, clearly labelled “in India — overseas hire process applies”, because employers do ask; but do not promise her or the employer that the portal arranges her travel or permit (see §3.2).

**Persona A1 — “Manjit, 38, Punjabi transfer helper.”** From Punjab, in Singapore 6 years, 2 employers, finishing contract next month. Cooks Punjabi/North Indian food, speaks Punjabi, Hindi and basic English. Cares for elderly + cooking is her strength. Expects ~S$800 and 2 Sundays off. Has an Android phone, uses WhatsApp all day, low confidence with long English forms. Needs: a profile she can finish in 10 minutes, in Punjabi/Hindi-assisted flow, and control over who gets her number.

**Persona A2 — “Selvi, 34, Tamil helper in India, ex-Singapore.”** From Tamil Nadu, worked in Singapore 2019–2023, now home. Speaks Tamil and working English, strong South Indian cooking and childcare. Wants to return. Needs: to be findable without paying any agent at home, and honest guidance that the employer must do the MOM process.

### 4.2 Side B — the employer (demand, pays for reveals)

Households in Singapore hiring for a home in Singapore, who specifically want an Indian helper. They must be the actual employer (not an agent).

**Persona B1 — “Working couple with a baby, condo in the East.”** Both work, 8-month-old baby, Indian vegetarian household. Need infant care + North Indian veg cooking. First-time employers — they do not know about EOP, levy concession, or transfer consent, and will fail without the free guides. In a hurry (returning to work). Will reveal 3–5 contacts in a weekend if the profiles are real.

**Persona B2 — “Son hiring for his elderly parents.”** Parents in their 70s, mother needs mobility help, father is diabetic — Indian meals, Hindi-speaking, someone patient with elderly. He is not living with them full-time, so trust and a previous-employer reference matter more than saving S$100. Needs eldercare experience tags he can filter on, and a way to interview in person.

**Persona B3 — “Experienced employer replacing a helper who is going home.”** Has hired before, knows the Facebook groups, is tired of fake/stale posts and agents posing as helpers. Will pay immediately for verified, current, Indian-only profiles. This is the early-adopter who converts first.

### 4.3 Side C — admin / moderator (internal)

Small internal role, not a customer. Reviews new profiles, handles reports, verifies flagged numbers, refunds invalid reveals. Admins do **not** match, recommend or message helpers on behalf of employers — admin tooling must not even offer a “send this profile to that employer” action.

## 5. Value proposition

**For helpers (free):** “Create your own profile in your language. Employers in Singapore who want an Indian helper can find you. You pay nothing — not to join, not when you get a job. Only employers who have paid can see your number, and you can hide your profile any time.”

**For employers:** “Only Indian helpers. Read every profile in full — experience, languages, cooking, salary, off days — before you pay anything. Pay only to reveal the number of a helper you actually want to call. No agency fee of S$1,000–3,000, no paying to browse. **And you will not be left alone with the paperwork: a free, step-by-step hiring guide walks you from ‘am I eligible?’ to her first month — costs, interviews, what to agree in writing, and every MOM step with its deadline — so you can do a direct hire yourself with confidence (§9A).**”

**Against the alternatives:**
- vs Facebook groups: structured filters, Indian-only, current availability, no public phone numbers, no agent spam.
- vs general portals (NetMaid, HelperPlace, EmployHelpers): Indian-first in every field (state, language, cuisine, veg handling), not “nationality = Indian” as one checkbox among many.
- vs agencies: no placement fee; the employer does the MOM paperwork himself, guided for free — or takes the helper he found here to any licensed agency *of his own choice* for paperwork only. The portal does not refer, book or take a cut (a referral feature would need fresh legal review; it is out of MVP scope).

## 6. Scope

### 6.1 MVP (v1) — must ship

**Helper**
- [ ] Sign up with mobile number + OTP (Singapore and India numbers, +65 / +91)
- [ ] Create / edit one profile with all fields in §8, photo upload, optional 60-second video intro
- [ ] Profile states: Draft → Pending review → Live → Paused / Hired (hidden) → Expired (needs reconfirm)
- [ ] “Still available” reconfirm every 14 days (one tap from push / WhatsApp reminder)
- [ ] See how many employers viewed her profile and how many revealed her contact (numbers only, no employer personal data until she chooses to respond to their call/message)
- [ ] Pause / delete profile any time, free

**Employer**
- [ ] Sign up with mobile + OTP and email; declaration: “I am the actual employer hiring for my own home in Singapore. I am not an employment agent.”
- [ ] Search + filters (§9) on web and app, no payment needed to search
- [ ] Read **full** profiles free — the only thing hidden is the contact number (and full name; first name + profile ID are shown)
- [ ] Shortlist / favourites, saved searches, new-profile alerts for a saved search
- [ ] Buy reveal credits (§7), reveal a contact, see the number + tap-to-WhatsApp / tap-to-call
- [ ] “My Reveals” list — every number revealed, date, notes field for himself, helper’s availability at reveal time
- [ ] Report a profile (fake, agent, number not reachable, helper says she was charged by someone, other)
- [ ] **Hiring Journey Hub (§9A):** stage-based home for process help (Exploring → Interviewing → Agreed → Doing the MOM steps → First 90 days), showing the right guides, tracker and tools for his stage

**Employer process help (§9A)**
- [ ] Guide library: the 10 core guides listed in §9A.4, each with MOM source links and a “last verified” date, free and readable without login
- [ ] Cost calculator v1: salary + levy (concession toggle) + insurance/medical/SIP/EOP inputs → monthly cost and first-year one-time cost, with the agency-route comparison
- [ ] Process trackers: Transfer tracker and Overseas-hire tracker — self-ticked checklists where every step states what, who does it, where (MOM link), deadline and cost
- [ ] Deadline calculator inside the trackers: he enters the transfer / arrival date and sees his SIP, medical and issuance windows
- [ ] Interview kits: question sets for infant care, childcare, eldercare and cooking, plus a printable interview note sheet
- [ ] Terms-to-agree template: fillable, downloadable one-page summary (salary, pay day and bank payment, rest days, duties, sleeping, food, phone rule, start date, notice) — a template for the two of them to sign themselves; the portal is not a party to it
- [ ] Glossary + FAQ: MDW terms, levy, IPA, EOP, SIP, transfer consent, in plain English

**Platform**
- [ ] Payments in **INR via UPI** (Indian PSP, e.g. Razorpay/Cashfree; cards/net-banking secondary), receipts with UPI reference, credit-restore flow for invalid numbers
- [ ] Moderation queue + admin console (§13)
- [ ] Guide CMS with source + last-verified date on every guide, and a review queue when a guide passes its review date (§9A.7)
- [ ] Notifications: push + email; WhatsApp message only to the user’s own number for OTP / reconfirm / reveal confirmation where consented
- [ ] English UI, with helper onboarding assisted in Hindi and Punjabi (Tamil next — see roadmap)

### 6.2 v1.1 / v2 — planned, not MVP

- Tamil (then Telugu, Malayalam, Bengali) assisted onboarding
- iOS app if MVP launches Android-first (see §11 — decision point, not a delay by default)
- Previous-employer testimonial attached to a profile (written by the previous employer, moderated, helper cannot edit it)
- Interview scheduling tool both sides operate themselves (calendar invite, no portal staff involved)
- Employer job post — a household posts its requirement and helpers browse jobs too (two-way browsing). *Useful and proven in the groups, but it doubles moderation; sequence it after profile search works.*
- Salary insight pages (anonymised, aggregated: what Indian transfer helpers in Singapore currently expect)
- Process help v2 (§9A.8): short video lessons for each journey stage, an opt-in email/push learning sequence (costs → interview → terms → MOM steps), first-90-days tracker with self-set reminders (salary day, 6-monthly medical), worked examples (“a Punjabi transfer helper for elderly parents — the full process, start to finish”), and guide versions for hiring an Indian helper for elderly parents vs for a newborn (same steps, different interview kits and checklists)

### 6.3 Out of scope — in every version unless the business changes its legal model

Work Permit/IPA submission, SIP/medical booking, flight booking, insurance selling, salary payment, contracts signed *through* the portal as a party, staff matching / concierge search, employer job-post boosting sold to agents, any listing by an employment agency (agencies cannot create helper profiles or employer accounts — this is a direct portal), any fee to a helper, any success fee.

## 7. Money: the pay-to-reveal model

### 7.1 Mechanics

- The unit is a **reveal credit**. 1 credit = reveal 1 helper’s contact number, once, permanently for that employer account (he can re-open “My Reveals” and see it again — he never pays twice for the same helper).
- Credits are bought in packs, paid in advance, in **INR (₹), paid via UPI**. This is an Indian website: the portal’s own charges are always in rupees. (The helper’s salary and all MOM costs in Singapore stay in SGD — those are Singapore amounts, shown in SGD everywhere they appear, including the cost calculator. Do not convert them.) They are not a subscription and do not auto-renew.
- Revealing shows: the helper’s **mobile number, and whether that number is on WhatsApp**, plus tap-to-call and tap-to-WhatsApp. Nothing else is unlocked — everything else was already free to read.
- A reveal is an employer↔helper pair record. It is logged (who, which profile, when, price paid) for refunds, anti-scraping and dispute handling.

### 7.2 Proposed pricing (to be confirmed before build — §18)

Anchor: an employer’s agency alternative in Singapore is S$1,000–3,000 in agency fees; a general direct-hire competitor charges a S$39 flat fee. In rupee terms for an Indian website, the pack prices below are set at familiar Indian price points (₹499 / ₹1,499 / ₹2,499) — roughly the same level as the S$9 / S$29 / S$49 originally modelled, rounded to clean INR pricing. A normal hire (Pack of 5) must still feel trivial next to the agency alternative.

| Pack | Proposed price | Per reveal | Intended buyer |
|---|---|---|---|
| Single reveal | ₹499 | ₹499 | Employer who found exactly one helper |
| **Pack of 5 (hero pack)** | **₹1,499** | ₹300 | Normal hire — interviews 3–5 helpers |
| Pack of 10 | ₹2,499 | ₹250 | Employer hiring for parents + own home, or a careful search |

- Pack validity: **12 months** from purchase. Unused credits do not expire sooner — short validity reads as a trick in this market.
- **Invalid-number guarantee:** if a revealed number is wrong, disconnected, belongs to someone else, or the “helper” is an agent — reported within **7 days** of reveal and verified by admin — the credit is restored automatically. No cash refund for “she didn’t reply”, “she changed her mind”, or “we hired someone else” — say this plainly *before* payment, not in fine print after.
- If the helper’s profile was already Paused/Hired at the moment of reveal due to a system error, restore the credit.
- **Helpers are never charged** — not for credits, not for “featured” placement in the MVP. Do not add helper-side paid boosting later without a fresh product + legal review: paying to be found is the first step down the agency-fee slope.
- No paid ranking for anyone in MVP search results. Sort is by relevance to the employer’s own filters, recency of “still available” confirmation, and profile completeness (§9.3). Trust is the product; paid ranking spends it.

### 7.3 Payment operations

- Gateway: an Indian PSP with **UPI as the primary payment method** (e.g. Razorpay, Cashfree or PayU — UPI intent/QR flow, with cards and net-banking as secondary options). Currency **INR only** for the portal’s charges in MVP.
- The payment screen is UPI-first: UPI apps (Google Pay, PhonePe, Paytm, BHIM), QR code, and UPI ID (VPA) entry — that is how Indian users expect to pay. Show the amount in ₹ with Indian formatting (₹1,499).
- Employer sees the total, pack contents and validity before paying — no drip pricing, no pre-ticked add-ons.
- Receipt emailed automatically with the reveal record, showing the UPI transaction reference. Indian tax/invoicing treatment (GST on the portal’s service, invoicing entity in India), and refund book-keeping: confirm with the accountant at setup (§18). Credit *restoration* for an invalid number (§7.2) is handled in-app instantly; a cash refund, where due, goes back to the original UPI source.
- Anti-fraud: one employer account per verified mobile; velocity limits on reveals (e.g. soft review trigger after unusually high reveals in 24h — a scraping/agent signal); credits are non-transferable and have no cash value.

## 8. The helper profile — complete field spec

Design rules: completable on a low-end Android phone in ~10 minutes; every field is pick-from-a-list where possible (free text only for About Me and work-history duties); every field marked **Public** (shown to everyone), **Reveal-only**, or **Private** (never shown — used for verification/admin only).

### 8.1 Identity and status

| Field | Type | Visibility | Notes |
|---|---|---|---|
| First name | Text | Public | Display name. Full name is Private, for verification only |
| Profile photo | Image | Public | One clear face photo. Moderated. No sunglasses/group photos |
| Video intro (optional) | Video ≤60 sec | Public | Strongly encouraged — it is the #1 shortlisting aid on other portals |
| Age | Number → shown as age | Public | Must be 23–<50 for a first Singapore Work Permit; 50–60 renewal/transfer cases — collect DOB privately, display age, validate and warn |
| Nationality | Fixed: Indian | Public | This portal is Indian-only. State/region is the differentiator (next field) |
| State / region in India | List: Punjab, Tamil Nadu, Kerala, Andhra Pradesh, Telangana, West Bengal, Assam / North-East, other Indian states | Public | Employers search by this because it predicts language and cuisine |
| Current location | Singapore / India / other country | Public | Drives the hire route and timeline |
| Status | Transfer / Finished contract / Ex-Singapore (in India) / Fresh (in India) | Public | See knowledge doc §4.1 — this is a hard filter |
| Available from | Date | Public | Required for Live status |
| Transfer consent (if in Singapore) | My employer has agreed / Not yet agreed / Finishing my contract (no consent needed at end date) + release date | Public | A profile that says “transfer” with no consent status is the #1 broken promise in Facebook groups — make the field unavoidable |
| Currently in Singapore since / total years in Singapore | Numbers | Public | |

### 8.2 Languages, food, faith — the Indian-first fields

| Field | Type | Visibility |
|---|---|---|
| Languages spoken, each rated Basic / Conversational / Fluent | Multi-select: English, Hindi, Punjabi, Tamil, Telugu, Malayalam, Bengali, Mandarin, Malay, other | Public |
| Cuisines I can cook, each rated Can cook daily / Can cook with recipe / Learning | North Indian, South Indian, Punjabi, Bengali, Indo-Chinese, Western, other | Public |
| Vegetarian cooking | I can cook pure-veg daily / I am vegetarian myself / I can keep veg and non-veg separate in cooking and storage (each yes/no) | Public |
| Special Indian cooking | Jain / no onion-garlic, satvik, diabetic-friendly Indian meals, tiffin / lunchbox, baby khichdi / porridge, festival cooking (yes/no each) | Public |
| Food handling | I can handle & cook: pork / beef / both / neither (explicit) | Public — prevents the most common day-one conflict |
| Religion | Hindu / Sikh / Christian / Muslim / other / prefer not to say | Public only if she chooses to show it. Optional field — never required to go Live |
| Dietary — my own food | Vegetarian / non-vegetarian / other note | Public |

### 8.3 Skills and experience

Skills are **rated** (Experienced / Some experience / Willing to learn), not just ticked:

Infant care (0–12 months) · Childcare (1–6 yrs) · Childcare (7–12 yrs) · Homework / school run · Eldercare — independent elderly · Eldercare — mobility help / walking & transfer support · Eldercare — night care · Dementia care experience · Cooking (see §8.2) · General housekeeping · Laundry & ironing · Grocery / marketing · Pet care (dogs / cats) · Gardening · Car washing

**Work history** (repeatable, most recent first): country, years/from–to, family type (adults + children ages + elderly), main duties in her words, reason for leaving (finished contract / employer migrated / employer no longer needs helper / family reasons / other). Previous salary is **not** displayed — expected salary is (§8.4).

**Certifications / training (optional):** infant-care course, eldercare course, first aid, cooking course — name + year, shown as self-declared unless a certificate image is uploaded for a “document seen by admin” tag.

### 8.4 Her expectations — shown in full, free

| Field | Notes |
|---|---|
| Expected monthly salary (SGD) | Single figure or range. Show as she sets it. The portal never labels any figure a “MOM minimum” — MOM sets none |
| Expected rest days per month | Number, and “Sundays preferred” yes/no. A profile or job expectation of **0 rest days is not allowed** — at least 1 rest day a month is a legal requirement since 2023; the form must block 0 |
| Preferred main job | Infant / childcare / eldercare / cooking / housework — what she *wants* her next job to be mainly about |
| Household preferences (optional) | OK with pets, OK to share a room with a child, prefers own room, OK with night care, OK with a second helper — yes/no each |
| About Me | Free text, ~500 characters, assisted prompts in her language: where she is from, her family, what she does well, what job she is looking for |

### 8.5 Contact and verification — never public

| Field | Visibility |
|---|---|
| Mobile number (call) | **Reveal-only.** This is the product being sold |
| Is this number on WhatsApp? | Shown after reveal (most reveals will convert to a WhatsApp chat) |
| Email (optional) | Private |
| Singapore FIN / Work Permit details, passport details | **Private — verification only, if she chooses the verified route (§10). Never displayed, never revealed, never sold.** Collect the minimum; a profile can be Live without it (labelled accordingly) |
| Home address in India | Private — do not collect at all in MVP. There is no product need for it |

**Profile completeness:** the app shows her a simple progress bar (e.g. “Your profile is 80% complete — add a video to get up to 3× more views”: only show such a claim if the data later proves it). Minimum to go Live: photo, age, state, location, status, available-from, at least one language, at least 3 rated skills, one work-history entry *or* “fresh helper, no experience yet”, expected salary, expected rest days.

## 9. Employer search and profile reading

### 9.1 The rule

An employer can do everything except see the contact number, for free, without even buying anything: search, filter, sort, open and read **complete** profiles, watch video intros, save favourites, set alerts. The paywall is exactly one field wide. Do not blur full profiles, hide salary, or cap profile views behind payment — that is the competitor behaviour this product wins against.

### 9.2 Filters (employer sets them himself — this is search)

**First row — hard filters (always visible):**
Status (Transfer / Finished contract / Ex-Singapore / Fresh) · Available by (date) · Main job (Infant care / Childcare / Eldercare / Cooking / Housework) · State or language (Punjab–Punjabi, Tamil Nadu–Tamil, Kerala–Malayalam, etc. — offer both, they overlap but are not identical) · Expected salary (max slider) · Rest days she expects (max)

**Second row — refine:**
Age range · Years in Singapore (0 / 1–2 / 3–5 / 5+) · Cuisine (North / South Indian, pure-veg, Jain) · Can handle pork / beef · Eldercare specifics (mobility, dementia, night care) · Infant experience (newborn) · Language level in English (or Hindi / Tamil etc.) · Has video · Has previous-employer testimonial (v2) · OK with pets · Religion (only profiles where she chose to show it)

**Search box:** free text over About Me and duties (“newborn twins”, “diabetic father”, “dog”) — employers think in situations, not taxonomies.

### 9.3 Sorting

Default sort: **(1) confirmed still available most recently, (2) available-from soonest, (3) profile completeness.** Also offer: salary low→high, most Singapore experience, newest profiles. No paid sort, no “featured” slot in MVP.

### 9.4 Profile page layout (web and app, same order)

1. Photo / video, first name, age, state — “Transfer helper · In Singapore · Available from 15 Nov”. Photo is prominent (large portrait in the header), and the feedback summary (★ average · number of employer reviews) sits directly under her name, linked to the feedback section below.
2. Still-available stamp: “Confirmed available — 3 days ago” (or the honest grey version: “Last confirmed 20 days ago”)
3. Expected salary + expected rest days — near the top; employers decide on these
4. **Skills — the prominent section, immediately after the header** (user decision, 27 Oct 2026): a visual grid of icon tiles, one per skill, each with its rated level shown as a meter (Experienced / Some experience / Willing to learn); her main-job skill is highlighted. Cuisines + veg / pork / beef handling and rated Languages sit inside or directly under this section. Skills are never a plain text list — an employer should grasp what she can do in five seconds.
5. About Me
6. Work history timeline
7. **Feedback from employers** (§9.6) — average stars, count, and review cards
8. Household preferences
9. **Reveal panel (sticky):** “Contact [First name] — Reveal her number · 1 credit” or, with no credits, the pack picker (§7.2) then reveal. After reveal: number, Call button, WhatsApp button, “Save to My Reveals”, Report link
10. Free guide strip: “Hiring a transfer helper — the MOM steps”

### 9.5 Shortlist, alerts, My Reveals

- Favourites with a private note per helper (“good for baby, salary high”) — visible only to that employer.
- Saved search + push/email alert when a new Live profile matches. Alerts are the retention engine for employers whose search takes 2–6 weeks.
- My Reveals: chronological list, helper’s name/photo/status at reveal time, number, his notes, and a self-reported outcome tag he can set (Contacted / Interviewed / Hired / Not suitable). Outcome tags are for his organisation and for the portal’s aggregate metrics only — setting “Hired” triggers a polite request to the helper to confirm and hide her profile; it does not itself change her profile or create any record with MOM.

### 9.6 Employer feedback on a helper’s profile (added 27 Oct 2026, user decision)

- A helper’s profile carries **feedback from her past employers**: overall star rating, “would you recommend her?”, “would you hire her again?”, the period she worked for them, their neighbourhood, and a written review. The average and count appear under her name and on her listing card.
- **The helper asks for it herself.** Her profile tools give her a personal feedback link (`/feedback/<her-id>`) with one-tap copy and WhatsApp share (plus a polite ready-made message). She sends it to a past employer; the employer opens it — no account needed — and completes the feedback form: name (publicly shown as first name + initial only), area, period employed, overall star rating, recommend yes/no, hire-again yes/no, free text — **plus the detailed layer below** (expanded 27 Oct 2026, user decision).
- **Detailed structured feedback (the form's core, not an add-on):** five category ratings (Cooking · Cleaning & housekeeping · Care of children/elderly · Reliability & honesty · Communication), an extensive grouped **strengths** chip list (care, food, home, character & work style — about two dozen choices), and an equally explicit **areas-to-improve** list (cooking variety, English, speed, phone use during work, confidence with new tasks, etc.) with optional free text. The profile's feedback section shows all of it: per-category averages as bars at the top of the section, and per review the category scores, green strengths chips, amber improvement chips and the written review. Honest improvement areas are a feature, not an embarrassment — a profile with only praise reads as fake.
- **Employer reference number — revealed with the helper's number.** The feedback form asks the employer for a **reference phone number**, with this promise shown before he submits: the number is never public; it is shown **only to an employer who has paid to reveal the helper's number**, so he can call the past employer as a reference. On the profile, each review's reference row stays masked (last 2 digits) until the viewer reveals that helper; revealing unlocks all her references' full numbers with call/WhatsApp buttons. On supplier-listed profiles (no reveal exists), reference numbers stay masked. Collecting a reference number without this exact consent wording and gating is not permitted — in the real portal, a reference call is also the portal's best fraud check on whether a review is genuine.
- **Checked once before it shows.** In the real portal, a submission is held for a light admin check (is it a real past employer? any abuse, phone numbers, or defamation?) and then published; the helper is notified and can report a review she believes is fake, which goes back to admin — she cannot delete reviews herself. (In the prototype, submissions appear immediately and the modal says so honestly.)
- Feedback is **free for both sides**, always — it is trust infrastructure, not a product. No employer is ever asked to pay to leave or read feedback, and a helper cannot pay to feature, boost or remove it.
- A helper with no Singapore history (Fresh) simply shows “No employer feedback yet” — never a fake zero-star rating.

## 9A. Employer hiring process help — the guided journey

### 9A.1 Why this is a product module, not a blog

Most employers who find a helper on Facebook or a portal do not fail at *finding* her. They fail at everything around it: they did not know they needed the Employers’ Orientation Programme before applying, they budgeted salary but not levy, insurance and medicals, they never agreed rest days or the phone rule in writing, they did not know a transfer needs the current employer’s written consent, or they sent a medical form that did not certify the helper is *fit for employment* and had it rejected. Agencies charge S$1,000–3,000 largely for knowing this process. A portal that removes the agency must replace the *knowledge*, or its employers will have a bad hire and blame the portal.

So the portal’s second job is: **make a first-time employer able to do a lawful direct hire himself, correctly, the first time.** This module is free for everyone — including employers who never buy a reveal. It is also the portal’s best marketing: the guides are what Google ranks, what gets shared in condo and parenting groups, and why an employer trusts this portal enough to pay for a reveal later.

### 9A.2 The boundary, stated once and enforced everywhere

| Help the portal GIVES | Help the portal NEVER gives (§3.2) |
|---|---|
| Explains a step: what it is, who does it, where, by when, what it costs, what goes wrong | Doing the step for him: submitting, booking, paying MOM, speaking to MOM |
| A tracker *he* ticks off, and a calculator that turns *his* dates into *his* deadlines | Tracking his case for him, chasing him as a case manager, or monitoring whether MOM approved him |
| A blank/fillable template both sides complete and sign themselves | Filling in his contract, being a party or witness to it, checking his completed documents |
| General answers published to everyone (“how does a transfer work?”) | Advice on his specific situation (“should I hire this helper / will MOM approve me?”) — the answer is always the guide + “confirm with MOM” |
| Links to MOM’s FDW eService, EOP and EA Directory at the exact step where he needs them | Collecting his Singpass, FIN or documents to use those services for him — the portal never asks for them |

Every guide, tracker and template carries the same footer: *“General information from MOM sources, last verified [date]. This portal is not an employment agency and cannot advise on your individual case. Confirm your steps in MOM’s FDW eService or with MOM.”*

### 9A.3 The journey — six stages, each with its own help

The employer’s account has a **Hiring Journey Hub**. He picks (or is carried into) a stage; the hub shows only that stage’s guide, checklist and tools. Stages are also used as contextual strips across the product (§9A.6).

**Stage 0 — “Should I hire, and can I?”**
- Guide: *Who can hire a helper in Singapore* — 21+, not an undischarged bankrupt, financial ability, living in Singapore, family situation for pass holders.
- Guide: *First-time employer? The EOP comes first* — what the Employers’ Orientation Programme is, online (~S$29–36, 2–3 hours), and the rule that it must be completed **at least 2 working days before** a Work Permit application.
- Self-check (not a verdict): a short eligibility checklist he answers himself, ending in “you appear to meet the basics / this point needs checking with MOM” — never “you are approved”.
- Guide: *Can you afford a helper? The honest monthly number* — salary + levy + food/upkeep + insurance averaged monthly, before he ever searches.

**Stage 1 — “Which kind of hire is right for me?”**
- Guide + comparison table: *Transfer vs finished-contract vs ex-Singapore vs fresh from India* — timeline (~1–3 weeks / ~3–6 weeks / ~4–8 weeks), can you meet her in person, salary level, extra steps (consent for transfers; SIP + arrival process for fresh hires; India-side and overseas paperwork for hires from India). Content from knowledge document §4.1, in plain English.
- Indian-hire specifics woven in, not bolted on: veg/non-veg household fit, language for elderly parents, why state and language are separate questions.
- Decision helper: 5 questions (When do you need her? Must you meet her first? Is this your first hire? What is the main job? What is your salary budget?) → shows which type *usually fits* that pattern, worded as information, not a recommendation of a person.

**Stage 2 — “What will it really cost?”**
- **Cost calculator (§9A.5)** — the centrepiece tool of this stage.
- Guide: *Every cost, listed* — MOM S$70 (S$35 application + S$35 issuance), S$5,000 security bond as a guarantee (not cash paid out, non-Malaysian helpers), insurance (medical ≥S$60,000/year + personal accident ≥S$60,000, typically a S$400–800 / 26-month package), SIP ~S$76–93 (first-time helper), medicals ~S$50–80, levy S$300 / S$60 concession / S$450 second helper by GIRO, plus the airfare responsibility at the end of employment.
- Guide: *The S$60 levy concession — do you qualify?* — child under 16 / person 67+ / person with disability in the household, in plain words, with the FDW eService link to confirm.
- Guide: *What Indian helpers in Singapore expect to be paid* — the market ranges from the knowledge document (Indian helpers averaged ~S$822/month in the cited 2022–mid-2026 placement data; transfer helpers earn more than fresh hires), clearly labelled market data, never a “MOM minimum” — MOM sets none.

**Stage 3 — “How do I choose and interview well?”**
- Guide: *How to read a helper profile* — what status, consent and available-from really mean; why “transfer, no consent yet” is a risk; why longest-stay-with-one-employer matters.
- **Interview kits (§9A.5)** by main job: infant care, childcare, eldercare (including mobility and dementia questions), cooking (including veg separation, Jain/no onion-garlic, festival cooking, and a sensible cook-a-dish trial), plus a video-call kit for a helper in India and an in-person kit for a transfer helper.
- Guide: *Questions both sides forget to ask* — built from the Facebook-group friction list: phone rule, rest-day timing and meals, curfew, food she eats, sleeping space, cameras in the home, night duties.
- Guide: *Check her employment history yourself* — how an employer, logged into MOM’s FDW eService with his own Singpass, can view a prospective helper’s employment history using details *she gives him*; and how to take a previous-employer reference (what to ask, what a reference can and cannot tell you).
- Red-flags guide: anyone asking the helper to pay, anyone offering a helper “with loan”, a profile that will not do a video call, pressure to decide the same day.

**Stage 4 — “We agree — what must be in writing?”**
- **Terms-to-agree template (§9A.5)** + guide: *Agree these 10 things before any paperwork* — salary and pay day (paid into her bank account, within 7 days after the period ends), rest days (which day, how many, and the rule that **at least 1 rest day a month cannot be bought out**), main duties and daily schedule, sleeping arrangement, food arrangement, phone rule, start / transfer date, contract length, notice for ending the contract, and who pays for what.
- Guide: *Why the IPA matters* — the In-Principle Approval will state her salary and rest days, in English and her language. What they agreed must match what goes into the application, or the hire starts with a dispute.
- Guide: *The employment contract and safety agreement* — what each covers (including window-cleaning safety), why both sides sign, and where MOM’s guidance sits. The portal provides the explanation and a template of points — it does not draft, check or sign his contract.

**Stage 5 — “Do the MOM steps” (the trackers)**
Two separate, step-by-step trackers (§9A.5). Every step shows: **what → who does it → where (deep link to MOM) → deadline → cost → the common mistake.** Headline steps:

*Transfer tracker (helper already in Singapore):*
1. Get her current employer’s **written consent** and agree the transfer date (both employers will receive the IPA stating that date).
2. Apply for the Work Permit via FDW eService, with the consent.
3. Buy/arrange the security bond and insurance for the new employment.
4. Confirm her 6-monthly medical status is current (arranged under the current employer).
5. Apply for Work Permit issuance. **She must not start work until the permit is issued in your name.**
6. Card registration (photo/fingerprints at MOM Services Centre if required) — card in about 5 working days.
7. Set up levy GIRO, her bank salary payment, and the Stage 6 basics.

*Overseas-hire tracker (helper in India):*
1. EOP done, at least 2 working days before applying (first-time employers).
2. Apply for the Work Permit; get the **IPA**; send her the IPA (English + her language) **before** she travels.
3. Security bond transmitted to MOM and insurance bought **before** she enters Singapore.
4. She enters Singapore only after IPA + bond are in place.
5. **Settling-In Programme within 7 days** of arrival (first-time helpers).
6. **Medical within 14 days** of arrival — and the form must certify she is **fit for employment**; a form that does not say this gets rejected and must be resubmitted within MOM’s window.
7. Apply for issuance, fingerprints/photo if required, card in about 5 working days. Ask for her bank account to be set up at issuance if she wants one.
8. Levy GIRO live, salary payment set up, Stage 6 basics.
Plus, in both trackers, an honest signpost: *“If any step is unclear or your case is unusual, MOM’s FDW eService help and MOM itself are the authority — or you may take the helper you found here to any licensed agency of your own choice for paperwork only. Check any agency in MOM’s EA Directory first. This portal does not make that arrangement for you.”*

**Stage 6 — “Her first 90 days, and every month after”**
- Guide + checklist: contract and safety agreement signed, house schedule and instructions in writing, emergency contacts, teaching your family’s cooking in the first weeks (the fix for the #1 cooking complaint in the groups).
- Monthly obligations, explained as a calendar he controls: salary on time by bank transfer with records, levy by GIRO, rest days actually taken, **6-monthly medical** (pregnancy/syphilis every 6 months, HIV every 2 years, TB once after 2 years — employer pays), insurance kept in force.
- Rules employers break without knowing: never hold her passport, never deduct food/medical costs from salary, no work for another household or at another address, no outside window cleaning outside the safety rules, adequate food and a proper sleeping space.
- Guide: *If it is not working out* — talk first, notice and contract terms, ending employment properly: cancel the permit within a week of the last working day, employer pays the return airfare, departure within about two weeks. And the safety routes (MOM, CDE) if either side needs help.

### 9A.4 The guide library — MVP table of contents

All guides: plain English, one job per guide, 5–8 minutes to read, MOM source links at the foot, “last verified” date shown, readable without login, written for web + app.

1. Who can hire a helper — and who can be hired
2. First-time employer: the EOP, before anything else
3. Transfer, finished-contract, ex-Singapore or fresh — which hire, which timeline
4. What hiring really costs — every fee, levy and monthly cost
5. Do you qualify for the S$60 levy concession?
6. What Indian helpers in Singapore expect to be paid (market data)
7. How to read a profile and interview well (with the kits in §9A.5)
8. Agree these 10 things in writing before paperwork
9. Transfer hire, step by step (tracker companion)
10. Hiring from India, step by step (tracker companion)
11. Her first 90 days — and your monthly duties as an employer
12. If it is not working out — ending a hire properly

### 9A.5 The four tools

| Tool | What he does with it | What the portal does / does not do |
|---|---|---|
| **Cost calculator** | Sliders/inputs: expected salary, levy rate (asks the concession questions), first-time helper (SIP), first-time employer (EOP), insurance package range | Outputs: monthly recurring total, one-time total, first-year total, and a side-by-side “via an agency (add ~S$1,000–3,000 service fee)” line. Labelled an estimate with its inputs shown. It does not quote, sell insurance, or collect payment for any of these costs |
| **Process trackers** (Transfer / Overseas) | Picks his route, enters the **transfer date or arrival date**, ticks steps off, sees computed windows (SIP by, medical by, “do not let her start before issuance”) | Saves his ticks on his account, sends *his own* reminders if he opts in. It does not submit anything, book anything, or know what MOM has decided — a tick is his record, not a status from MOM. Every step deep-links to the MOM page where *he* does it |
| **Interview kits** | Picks the main job, gets the question set + a printable note sheet (her answers, salary/rest days discussed, follow-ups) | Content only. No scoring of the helper, no “fit score”, no recommendation — he interviews and decides |
| **Terms-to-agree template** | Fills the 10 points from Stage 4 (on web/app or printed), downloads/prints it for both of them to discuss and sign themselves | A template of points to agree, with the legal minimums (e.g. the unbought-out rest day) printed on it. The portal is not a party, does not store a signed copy by default, and the template states it is not a substitute for the employment contract or MOM’s requirements |

### 9A.6 Just-in-time help — where the module appears inside the product

Process help must find him where he already is, not only in a “Guides” menu:

- **Search page:** “New to hiring? Start with the 6 stages →” strip; a timeline chip on filters (“Transfer = ready in ~1–3 weeks · Fresh from India = ~4–8 weeks”).
- **Profile page:** the guide strip already specified in §9.4 becomes stage-aware — a transfer profile shows the transfer timeline and consent explainer; a fresh-from-India profile shows the overseas timeline and a plain warning that the process is longer.
- **Reveal confirmation:** “You have her number. Next: interview with these questions (kit), then agree these 10 things in writing.” — with the kit and template one tap away.
- **My Reveals, day 3 (opt-in nudge):** “Spoken with her? If you are going ahead, open your Transfer Tracker.”
- **Pack purchase page:** the cost guide link (“salary and levy are monthly on top of this — see the full cost”) so the reveal price is never mistaken for the cost of hiring.
- **Helper side (light touch):** a short “What a good employer will do” page in the helper’s language, so she can recognise a proper process (IPA in her language, no fees to her, rest day in writing) — this protects the portal’s helpers and quietly teaches employers what helpers now expect.

### 9A.7 Content governance — this module fails if it goes stale

- Every guide names its MOM source pages; an admin review queue flags any guide **90 days** past its last-verified date, and immediately when MOM announces a change to levy, insurance minimums, rest-day or programme rules.
- Figures (levy, SIP/EOP, insurance minimums, MOM fees) live in **one** structured data place in the CMS and are rendered into every guide, calculator and tracker from there — a levy change is edited once, not hunted through 12 guides.
- No guide gives a figure without saying what it is: a MOM fee, a legal minimum, or a market range with its source and date.
- Support scripts mirror §9A.2: agents may walk him through using a guide/tracker, and must route “what should I do in my case?” to MOM (or his own licensed agency), in a saved template reply.

### 9A.8 What success looks like for this module

An employer who arrives knowing nothing can, without contacting support: pass the Stage 0 self-check, choose the right hire type, produce a realistic first-year budget, interview with the kit, fill the terms template, open the correct tracker, and complete a transfer or overseas hire in the right order inside the deadlines — and can say afterwards that the portal taught him the process, even though the portal never did a single step for him. Metrics in §15.

---

## 10. Verification, trust and safety

Verification sells the reveal. An employer pays because he believes the number reaches a real, currently available Indian helper — not an agent, not a stale listing.

### 10.1 Helper verification levels (display the level honestly)

| Level | Check | Badge |
|---|---|---|
| Phone-verified | OTP on the number she lists as her contact | Shown on every Live profile — this is the minimum, and it also guarantees the product works: the number sold is the number verified |
| ID-checked (optional, encouraged) | She uploads her Work Permit card / an ID document; admin checks name + photo match the profile. Document image is stored encrypted, never displayed | “ID checked” |
| Availability-confirmed | Not a level — a freshness stamp (§9.4) from her 14-day reconfirm tap | Date shown |

Never use the phrase “MOM-verified” unless a real check against MOM data is actually performed with her consent. Do not copy a competitor’s badge language without the check behind it.

### 10.2 Employer verification

OTP mobile + email at signup; the §6.1 declaration checkbox with the date/time logged; payment method on file at first purchase. No Singpass requirement in MVP (the portal is not doing MOM transactions) — asking for Singpass would collect data the product does not need.

### 10.3 Anti-agent, anti-scraping, anti-abuse

- Agents are the top complaint in the Facebook groups. Signals to monitor: an employer account revealing at high volume, a helper profile whose number answers as an agency, identical photos/text across profiles, a number appearing on many profiles. Admin actions: warn → suspend → ban, with the reason logged.
- Technical: numbers are never in page HTML for non-revealers, no bulk export, rate limits, reveal requires a logged-in paid action — scraping the site yields everything *except* the one thing of value, by design.
- One person, one helper profile. Duplicate detection on mobile number + photo.
- In every helper’s onboarding, in her language, in plain words: *“This app is free for you. If anyone asks you for money for this app, or to be put on this app, do not pay. Tap Report and tell us.”*

### 10.4 Reporting and safety surface

Report button on every profile, reveal and guide page. Categories for helpers include “someone charged me money”, “employer is behaving badly / unsafe”, “this is not me”. Permanent help page with MOM reporting, Centre for Domestic Employees (CDE) and HOME contact routes. A helper can hide her profile in one tap, instantly, without giving a reason — that control is a safety feature, not a settings nicety.

### 10.5 Moderation rules (publish them)

No profile goes Live unreviewed in MVP (target review SLA: same day). Reject / edit for: no clear face photo, contact details in About Me or photo (numbers in text/images are the classic paywall leak — check for it), “0 rest days”, salary fields used as ads, agent language (“we have many girls available”), any other person’s photo, a child’s photo. Employer-side moderation arrives with job posts in v2; in MVP, employers have no public free text except private notes, which removes most employer-side moderation by design.

## 11. Website and app — platform specification

One product, two front doors, **one backend, one account, one credit balance**. A reveal bought on the web is visible in the app and vice versa.

### 11.1 Website (employer-first)

Employers do long, filter-heavy searches on larger screens and arrive from Google. The website is the SEO and conversion surface.

- **Public (no login):** home, search + full profile reading (profiles are indexable — see §14), salary/cost guides, direct-hire checklists, how it works (for helpers / for employers), pricing, safety & reporting, FAQ, contact. Indexable profile pages are the growth engine — a page for “Punjabi transfer helper in Singapore, available November” is exactly what employers google.
- **Logged in:** favourites, saved searches + alerts, buy credits, reveal, My Reveals, account, receipts.
- Tech requirements: fast on mobile web (most employer traffic will still be phones), server-rendered profile pages for SEO, responsive down to small Android screens, WCAG-conscious contrast and tap sizes (many employers are elderly children-of-parents users — Persona B2’s son is the buyer, but parents may browse).

### 11.2 App (helper-first, employer-complete)

Helpers live on phones. The app is the supply-side home: onboarding, reconfirm tap, view counts, pause/hide. Employers get the full search + reveal flow in the app too — do not make the app a helper-only shell.

- **Android first** if a sequence is forced: helpers in this market are overwhelmingly on Android, often low-end devices on limited data. Keep the install small, images compressed, profile creation resumable offline-ish (draft saves locally, syncs when data returns).
- **iOS:** same feature set. Build cross-platform (one codebase for both apps + shared API) unless there is a specific native reason not to — the team cost of two native apps buys nothing in MVP. The choice of framework is an engineering decision at build time; this document requires only: one codebase, push notifications on both, in-app payment for credits must comply with Apple/Google rules — **note: credits that unlock a real-world service contact are generally sold as a service, not digital content, but confirm current store policy at build; if a store requires its own billing for the credit SKU, use it or sell credits on web only and honour them in-app.**
- **App screens (MVP list):** Splash/language → OTP login → role pick (I am a helper / I am an employer) → *Helper:* profile wizard (6 short steps) → my profile + completeness → views/reveals stats → still-available reconfirm → pause/hide/delete → *Employer:* search + filters → profile → packs/pay → reveal → My Reveals → favourites/alerts → *Shared:* guides, help & safety, settings, notifications.

### 11.3 Shared services

Auth (OTP via SMS/WhatsApp), profile service, search service (structured filters + free text), credits & payments service (ledger — every credit bought, spent, restored, with reason), notifications (push, email, SMS fallback), media (photo/video with moderation status), admin console, analytics events (§15). The credits ledger is money: build it append-only, reconcile it against the PSP daily, and make “restore credit” an admin action that writes to the same ledger.

### 11.4 Languages

UI language at launch: **English**. Helper onboarding assistance (wizard help text, explainer video/scripts, onboarding FAQ): **Hindi and Punjabi** at launch — the two largest launch supply groups — **Tamil in v1.1**. Employer side: English only. Do not auto-translate profiles; a helper writes About Me in English with assisted prompts, and language *ratings* carry the rest.

## 12. End-to-end flows

### 12.1 Helper joins and goes Live (~10 minutes)

Sign up (mobile OTP) → pick “I am a helper” → wizard: About you → Where are you now & status (+ available-from, consent status) → Languages & cooking → Skills & experience (+ work history) → What you expect (salary, rest days) → Photo (+ optional video) → review screen in plain language (“This is what employers will see. Your number is hidden. Only a paid employer can reveal it.”) → submit → admin review → Live + push: “Your profile is live.” → every 14 days: “Are you still looking? Tap Yes” → if no response in 7 further days, profile auto-pauses (not deletes) with a “come back any time” message.

### 12.2 Employer finds and reveals (the money flow)

Many employers now arrive *before* they search, through the process module: Google a question (“how to hire a transfer helper”, “maid levy concession”) → land on a free guide (§9A.4) → Stage 0–2 self-check and cost calculator → *then* search, already knowing his hire type and budget. The reveal flow itself: search (free, no login needed to browse) → filter → open 4–6 full profiles (free) → shortlist 3 → tap Reveal on #1 → login (OTP) + declaration → buy Pack of 5 (₹1,499, via UPI) → 1 credit spent, number + WhatsApp shown → employer calls/messages **outside** the portal, in his own apps → reveal confirmation hands him the **interview kit** (§9A.6) → interviews in person (transfer) or by video (helper in India) → he and the helper agree salary, rest days, start date themselves, recorded on the **terms-to-agree template** → he opens the matching **process tracker** (Transfer or Overseas, §9A.5), enters the transfer/arrival date, and does the MOM steps himself, ticking them off (or takes the helper to any licensed agency of his choice for paperwork only) → outcome tag in My Reveals (optional) → helper confirms she is hired → profile hides → his Journey Hub moves him to **Stage 6 — first 90 days**, with the monthly-duties checklist. The portal’s commercial job is done at the reveal — its teaching job runs from the first guide he read to her third month.

### 12.3 Invalid reveal refund

Employer taps “Report this number” in My Reveals within 7 days → chooses reason → admin tests/assesses (number disconnected / wrong person / agent) → credit restored to his balance + he is notified. Cash refunds only where the PSP/law requires or the pack is wholly unused and he asks within a stated window — set the exact cash refund terms with the accountant and write them on the pricing page before launch.

## 13. Admin console (MVP)

Profile review queue (approve / request change with a templated reason / reject) · profile search + status control · reveal ledger + credit restore · report queue (profiles, numbers, safety) with priority for safety reports · user lookup (helper/employer) + ban · pack/price configuration · guide CMS with the single-source figures table, per-guide source links and last-verified dates, and the 90-day guide review queue (§9A.7) · dashboard (§15 numbers). Every admin action is audit-logged. There is deliberately **no** admin feature to send a profile to an employer, message a helper for an employer, or create a profile for a helper over the phone — if the business wants assisted onboarding (e.g. at a community event), the helper still creates and owns her own account and profile, with staff only guiding her hands on her own phone.

## 14. Growth and SEO (product-led)

- **Supply first, in one community.** Seed transfer / finished-contract Indian helpers in Singapore: Facebook transfer groups (post helpfully within group rules — never scrape profiles or copy numbers), Indian temples/gurudwaras/churches, condo noticeboards, helper referral (“invite a friend — also free”, no cash referral to helpers in MVP: paying per signup invites fake profiles).
- **Demand where Indian families in Singapore already are:** Indian expat/condo communities, Indian associations, parenting and eldercare communities — message: the §5 employer line, and show real, current profile counts only when they are real.
- **SEO pages:** one indexable page per Live profile, plus filter landing pages (Indian transfer helpers in Singapore / Punjabi helpers / Tamil helpers / Indian helper for a vegetarian family / Indian eldercare helper in Singapore) and the guide library. This is slow, compounding, and exactly what Facebook cannot do.
- **The honesty rule for growth:** never inflate profile counts, never keep hired helpers visible to look bigger. A smaller, true portal beats the groups; a padded one becomes the groups.

## 15. Success metrics

**North star:** reveals per week that reach a real conversation — measured by reveal volume minus invalid-number reports, plus the post-reveal survey (“Did you speak with her?” one-tap at day 3). A reveal nobody used is revenue today and a dead product tomorrow.

| Area | Metric | MVP target logic |
|---|---|---|
| Supply | Live Indian helper profiles; % transfer/finished-contract; % reconfirmed in last 14 days | Grow weekly; freshness % above 80% or search quality is lying |
| Demand | Employer signups; searches per signup; profiles read per search | Profile reads are free — a low read→reveal rate with high reads means trust/price friction; a low read rate means search/filter friction. Measure both |
| Revenue | Pack conversion (signup → paid), reveals per pack actually used, cost per reveal vs S$1,000+ agency anchor | Pack of 5 should be the majority seller if §7.2 is right |
| Quality | Invalid reveal rate; report rate; time-to-review for new profiles | Invalid rate must stay in low single digits |
| Process help (§9A) | Guide reads → employer signup rate; calculator completions; trackers started per reveal; tracker stage completion (self-ticked); interview-kit and template downloads per reveal; % of guides inside their 90-day verified window; support tickets asking “how do I…?” that a guide already answers | Guides are the top of funnel *and* the product’s promise: a guide that is read but leads nowhere is a content problem; a tracker started but abandoned at the same step for many employers means that step’s explainer is unclear — fix the content, do not add a human service |
| Outcome | “Hired” tags (self-reported, both sides where possible) |Directional only — the portal is not a party to the hire and must not claim placement statistics it cannot verify |

## 16. Risks and mitigations

| Risk | Mitigation in this design |
|---|---|
| Product drifts into agency activity (staff help, success fees, paperwork) | §3.2 never-list, copy rules (§3.3), admin console with no matching tools, legal review of the final feature set + terms before launch |
| Cold start — employers come, no Indian helpers; helpers come, no employers | Niche launch, supply-first seeding (§14), one city, do not open other nationalities to fake scale |
| Stale / fake profiles destroy trust in the reveal | OTP = the sold number, 14-day reconfirm, same-day review, invalid-credit guarantee |
| Agents infiltrate both sides | Declaration, volume monitoring, report category, bans (§10.3) |
| Helpers get harassed after reveal | Number is revealed to one paid, verified-mobile employer at a time; one-tap hide; safety reporting; clear pre-reveal notice to employers in Terms: contact is to discuss this job only |
| Sensitive-data breach (FIN, documents) | Collect the minimum, ID upload is optional/encrypted/never displayed, PDPA consent per disclosure, deletion on request |
| Pricing too high vs “free” Facebook / too low to run | §7.2 anchoring + pack experiment: test Single/Pack-of-5 framing, not the existence of payment |
| Fresh-helper profiles create expectations the portal cannot fulfil (travel/permit) | Status labels + a plain explainer at profile and reveal: overseas hire = employer does the full MOM process; the portal arranges nothing |
| Process guides go stale or are read as personal advice, and an employer follows a wrong step | §9A.7 governance: single-source figures, 90-day review queue, MOM-change triggers, source + verified date on every guide, the §9A.2 footer on all content, tracker ticks labelled as his record — never a MOM status |
| Employers ask support to “just do the paperwork for me” once the guides build trust | This demand is expected and is *not* a roadmap item. Support uses the §9A.7 template: point to the tracker + MOM, or to MOM’s EA Directory so he can engage any licensed agency himself. Any future paperwork business is a separate legal decision (§17), never a support favour |

## 17. What this product is not — future questions, kept separate

- **Other nationalities** (Filipino, Indonesian, Myanmar): a deliberate later expansion decision, not an MVP filter value. The field design already generalises — the go-to-market and community trust do not.
- **Hiring inside India:** different product document, market and legal review (see §2).
- **Employer job posts:** v2 (§6.2), after profile search + reveals are proven.
- **EA partnership / becoming an EA:** not part of this product. If the business later wants paperwork revenue, that is a new decision under Route B/C of the knowledge document, with fresh legal advice — it must not grow quietly out of this portal’s support inbox.

## 18. Decisions still open — small, and needed before build

1. **Name + domain** (working title only in this document). Must be sayable by both a Punjabi helper and an elderly employer, and must not contain “agency” or promise placement.
2. **Final pack prices** — §7.2 proposes ₹499 / ₹1,499 / ₹2,499, paid via UPI (user decision, 26 Oct 2026: Indian website, INR + UPI). Confirm or adjust once, then A/B the framing, not the whole model.
3. **Launch platform sequence** — website + Android at launch, iOS fast-follow, is the recommended sequence (§11.2). Confirm if both apps must be day-one.
4. **In-app purchase treatment for credits** — confirm current Apple/Google policy at build (§11.2).
5. **Business setup items** — invoicing entity, GST position, PSP account, cash refund policy wording, and a Singapore lawyer’s review of the final terms + the §3 never-list. This document is a product definition, not legal advice.
6. **India-side check for fresh profiles** — before marketing to fresh helpers in India, confirm any India-side emigration / recruitment rules that apply to women going to Singapore for domestic work, and write the result into the helper explainer. Do not recruit in India until this is checked.

## 19. MVP acceptance checklist

The MVP is done when: a helper can go from install to a reviewed Live profile in one sitting; an employer who has never seen the product can, without help, filter to Indian transfer helpers, read three full profiles free, buy a pack, reveal a number, and call it; an invalid reveal restores a credit without an email argument; a helper can hide her profile in one tap; **and an employer who arrives knowing nothing about hiring can, without contacting support, work through the Journey Hub — eligibility self-check, hire-type comparison, a cost calculation for his own budget, an interview with a kit, the terms template, and the correct process tracker with his deadlines calculated — and every guide he used shows its MOM source and a last-verified date inside 90 days**; no screen, email or store listing anywhere calls the product an agency, charges a helper, or promises a placement — and the numbers in §15 are visible on the admin dashboard from day one.

---

## 20. Supplier-listed profiles — the callback model (added 27 Oct 2026, user decision)

> **Read this against §3 before building anything real.** The direct side of this portal is Route A: no agency may list, ever (§3, §6). The supplier track below was added by explicit user decision on 27 Oct 2026 and sits in deliberate tension with that rule. It is specified here so the tension is on paper, not discovered in a regulator's letter. **Before any real launch of the supplier track: separate legal review under the Employment Agencies Act.** A supplier who lists helpers and pays for employer leads is, in substance, close to what the Act calls an employment agency — the fines in the knowledge document (up to S$80,000 / 2 years for unlicensed EA activity) are the stakes. The direct-helper side does not depend on this track and launches clean without it.

**The model.** A *supplier* (an individual or business in India or elsewhere who has helpers available) signs up and adds helper profiles. Rules that do NOT change: profiles are free to list; helpers are never charged anything; everything about the helper is free for employers to read.

**What changes is the contact flow and who pays:**
- A supplier-listed profile has **no helper phone number on the portal at all** — there is nothing to reveal. The contact party is the supplier.
- The profile's action is **“Request a callback”**: the employer submits his name, mobile number, preferred time and an optional message. Free for the employer — he pays nothing on a supplier profile.
- The request lands in the **supplier's dashboard inbox** with the employer's number **masked** (last 4 digits only).
- **How the supplier pays (updated 27 Oct 2026, user decision — supersedes the per-unlock credit originally specified here): a monthly subscription keeps his profiles active.** Supplier Monthly is **₹999/month, paid via UPI (UPI AutoPay, cancel anytime)**. While the subscription is active: **unlimited** helper profiles stay Live in search (no cap on profile count, ever — user was explicit), callback requests come in, and unlocking an employer's number is **included at no per-request charge**. When the month lapses, his profiles go **inactive** — out of search results, public profile shows an inactive notice — until he renews; his inbox and past requests remain, but unlocking waits for renewal. Adding profiles is free; the subscription is what keeps them switched on.
- The supplier dashboard shows: subscription status and renewal date, profiles listed/active, callback requests received, numbers unlocked. The supplier can add/edit/pause his profiles. He cannot see employer numbers while unsubscribed, cannot buy ranking, and cannot message employers through the portal beyond the callback he makes himself.

**Guardrails that keep this a listing product and not quiet agency work:** the portal never speaks to the employer on the supplier's behalf; the callback is placed by the supplier, from his own phone; the portal takes no placement/success fee from anyone in this track (the monthly fee buys listing activity and contact access during the paid month, nothing else); supplier profiles are badged “Listed by supplier” everywhere, with a line on the profile that the employer will deal with the supplier, not the helper directly; the helper's own feedback section (§9.6) still belongs to the helper's profile. If a supplier is found listing profiles without the helpers' knowledge, or charging helpers, the account is removed — write both into the supplier terms at build.

**Prototype status (27 Oct 2026):** implemented and live as a clickable flow — supplier sign-up, dashboard, add-profile form, seeded demo supplier “Sunrise Helpers” with 2 profiles, callback request from the profile, masked number, and the **monthly subscription** (₹999/month mock UPI checkout; profiles active only while subscribed, unlocks included, unlimited profiles; dashboard includes a simulate-lapse demo control). The earlier 1-credit-per-unlock version shipped first the same day and was replaced by this monthly model on the user's instruction.

---

*Built from: Knowledge Document — Hiring a Domestic Helper in Singapore (26 Oct 2026), §§3–11 (MOM eligibility, transfer process, salary data for Indian helpers ~S$822 average across 2022–mid-2026 placements in the cited agency dataset, Facebook-group templates, competitor models including EmployHelpers’ flat-fee portal positioning, and the Employment Agencies Act analysis). All MOM figures to be re-verified on mom.gov.sg at build time.*
