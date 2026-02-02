# FLOW 02: SERVICES INQUIRY & CONSULTATION BOOKING
## For Web Dev, Mobile Apps, and Automation

**Flow Name:** Service Inquiry - Premium Solutions  
**Flow ID:** `service_inquiry_premium`  
**Trigger Keywords:** website, web development, mobile app, app development, automation, n8n, build, create, develop, design, landing page, ecommerce, ai agent,LLM  
**Priority:** MEDIUM-HIGH (8)  
**Active:** Yes  

---

## INITIAL MESSAGE

```
Hey! 👋 I see you're interested in {detected_service}!

Quick question: Are you looking to...

A) Build something brand new
B) Redesign/improve what you have
C) Not sure yet, just exploring
```

---

## STEP 1: Service Type Identification
**Step Name:** `identify_service_need`  
**Store As:** `service_need_type`  

**Branching:**

**IF "A" (Build new):**
```
Awesome! Starting fresh is exciting. 🚀

We've built {detected_service} for businesses just like yours.

Before we dive in - are you also getting the FREE chatbot? 

Most clients start with the free chatbot to capture leads immediately, THEN we build their {detected_service}.

Smart move or already got one?

1️⃣ Yes, get me the free chatbot too!
2️⃣ No, just {detected_service} for now
```

**IF "B" (Redesign):**
```
Got it! Improving what you have can be even better than starting over. 💪

What's not working with your current {detected_service}?

A) Not getting enough leads/sales
B) Looks outdated/unprofessional  
C) Too slow or buggy
D) Can't update it myself
E) All of the above 😅
```

**IF "C" (Exploring):**
```
Perfect! Exploring is smart. Let me help you figure out what you actually need. 

Here's what we do:

🌐 WEBSITES: High-converting sites that capture leads 24/7
📱 MOBILE APPS: Custom iOS/Android apps with full deployment  
⚙️ AUTOMATION: n8n workflows that save hours every day
🤖 AI AGENTS: 100+ specialized bots for every business need

Which one sounds most interesting for your business?
```

→ After response, continue to STEP 2

---

## STEP 2: Problem-Solution Fit
**Step Name:** `establish_problem_solution_fit`  

**For WEB DEVELOPMENT:**
```
Here's the thing about websites that most people don't realize...

A "pretty" website means NOTHING if it doesn't make you money. 💰

We don't build portfolio pieces. We build REVENUE MACHINES that:
✅ Capture leads 24/7 (even while you sleep)
✅ Convert visitors into paying customers
✅ Rank on Google for your industry
✅ Integrate with your CRM, payment systems, etc.

Example: Last month, we built a {business_type} website that generated 47 leads in the first week.

Want to see some examples of our work? Or should we just talk about YOUR project?
```

**For MOBILE APPS:**
```
Mobile apps are where the BIG money is. 📱💰

But here's what nobody tells you: Most apps FAIL because they solve a problem nobody has.

We only build apps that:
✅ Keep customers engaged daily
✅ Have a clear monetization path
✅ Solve a REAL pain point
✅ Can scale as you grow

Before we go further - do you already have users/customers who would use this app? (Yes/No)
```

**For AUTOMATION:**
```
n8n automation is like having a team of robots working for FREE. 🤖

Here's what we can automate:
✅ Lead capture → CRM (no manual data entry)
✅ Email/SMS campaigns (triggered by user behavior)
✅ Appointment scheduling (no back-and-forth)
✅ Data scraping & reporting (automatic updates)
✅ Social media posting (set it and forget it)

What takes up the MOST time in your business right now?
```

**Wait for response, then continue to STEP 3**

---

## STEP 3: Name Capture
**Step Name:** `capture_name_premium`  
**Input Type:** Text  
**Store As:** `customer_name`  
**Validation:** Required  

**Message:**
```
Love it! This is exactly what we do best. 💪

Before we go further, what's your name?

(I'm Tessa, by the way - nice to meet you!)
```

---

## STEP 4: Company/Project Name
**Step Name:** `capture_company`  
**Input Type:** Text  
**Store As:** `company_name`  

**Message:**
```
Nice to meet you, {customer_name}! 

What's your company name? 

(Or if you're just starting, what will you call this project?)
```

---

## STEP 5: Timeline & Budget Discovery
**Step Name:** `discover_timeline_budget`  

**Message:**
```
Perfect! So we're talking about {detected_service} for {company_name}.

Two quick questions:

When do you need this done by?

A) ASAP / Within 1 month
B) 1-3 months
C) 3-6 months
D) No rush / Just planning
```

**On Response:**

**Store as:** `desired_timeline`

**Then ask:**
```
Got it! And have you set a budget for this project?

A) Under $3,000
B) $3,000 - $10,000
C) $10,000 - $30,000
D) $30,000+
E) Not sure / Need your help
```

**Store as:** `budget_range`

→ Continue to STEP 6

---

## STEP 6: Budget-Based Response & Qualification
**Step Name:** `budget_response`  

**Branching Logic:**

**IF budget < $3,000:**
```
I appreciate you being upfront, {customer_name}! 

Here's the honest truth: For {detected_service}, $3k is tight but we might be able to make something work.

It depends on exactly what you need. Let me connect you with our team for a FREE consultation - they'll either:

1️⃣ Find a way to fit your budget with a phased approach
2️⃣ Recommend starting with the FREE chatbot + a landing page (this combo actually works great!)
3️⃣ Be honest if it's not a fit (we won't waste your time)

Sound fair?

What's your phone number and email so we can set up that call?
```

**IF budget $3,000 - $10,000:**
```
Perfect! That's right in the sweet spot for {detected_service}. 🎯

Here's what $3k-$10k typically gets you:

For WEBSITES:
✅ Professional 5-10 page website
✅ Mobile responsive design
✅ Basic SEO optimization
✅ Contact forms + lead capture
✅ 3 months of support

For MOBILE APPS:
✅ Cross-platform app (iOS + Android)
✅ Core functionality (2-3 main features)
✅ Basic UI/UX design
✅ App store deployment
✅ 1 month post-launch support

For AUTOMATION:
✅ 3-5 workflow automations
✅ CRM integration
✅ Email/SMS sequences
✅ Reporting dashboards
✅ Training + documentation

Want to book a FREE consultation to scope out exactly what you need?

Phone + email?
```

**IF budget $10,000+:**
```
Excellent! With that budget, we can build something REALLY powerful. 💎

You're talking about a project that can truly transform your business.

At this level, you get:
✅ Dedicated project manager
✅ Senior developers/designers
✅ Multiple rounds of revisions
✅ Advanced features & integrations
✅ Comprehensive testing
✅ Extended support period
✅ Priority service

But honestly? Let's not waste time with back-and-forth messages.

I want to connect you with our senior team for a PROPER consultation call - they'll:

1️⃣ Understand your vision in detail
2️⃣ Show you examples of similar projects
3️⃣ Give you a custom proposal
4️⃣ Map out exact timeline and deliverables

Usually, this consultation call costs $500, but for serious projects like yours, it's FREE.

Can I get your contact info to set this up?
```

**IF "Not sure":**
```
No worries! Most people aren't sure about budget until they know what's possible.

Here's how this works:

1️⃣ We have a FREE consultation call
2️⃣ You tell us what you want to achieve
3️⃣ We show you options at different price points
4️⃣ You pick what fits your budget

Zero pressure. Zero obligation.

We've worked with budgets from $2k to $100k+ - there's usually a way to make it work.

Want to hop on a quick call? What's your contact info?
```

→ All paths lead to STEP 7

---

## STEP 7: Contact Information Capture
**Step Name:** `capture_contact_premium`  

**Sub-step 7a: Phone**
**Input Type:** Phone  
**Store As:** `customer_phone`  

**Message:**
```
Perfect! What's the best phone number to reach you?
```

**Sub-step 7b: Email**
**Input Type:** Email  
**Store As:** `customer_email`  

**Message:**
```
And your email address?
```

---

## STEP 8: Feature Discovery (Critical for Scoping)
**Step Name:** `discover_features`  

**For WEBSITES:**
```
Last few questions to help us prepare for the call, {customer_name}:

Do you need any of these? (Check all that apply)

□ E-commerce/Online store
□ Booking/Appointment system  
□ Member login/Dashboard
□ Payment processing
□ Blog/Content management
□ Multiple languages
□ Advanced animations
□ None of these - just a basic site
```

**For MOBILE APPS:**
```
What's the MAIN function of your app?

A) E-commerce (buy/sell products)
B) Service booking/scheduling
C) Social/Community features  
D) Content/Media delivery
E) Productivity/Tools
F) Games/Entertainment
G) Other (tell me more)
```

**For AUTOMATION:**
```
Which tools/platforms do you need to connect?

Check all that apply:

□ CRM (Salesforce, HubSpot, etc.)
□ Email marketing (Mailchimp, etc.)
□ Calendar (Google, Outlook)
□ E-commerce (Shopify, WooCommerce)
□ Social Media (Facebook, Instagram)
□ Spreadsheets (Google Sheets, Excel)
□ Forms (Google Forms, Typeform)
□ Other (tell me what)
```

**Store as:** `required_features`

---

## STEP 9: The Irresistible Offer
**Step Name:** `present_package_offer`  

**Branching by Budget:**

**For PREMIUM clients ($10k+ budget):**
```
Alright {customer_name}, here's what I'm thinking... 🎯

Most businesses your size need MORE than just {detected_service}.

You need a complete DIGITAL ECOSYSTEM:

🎁 THE INSTEL COMPLETE PACKAGE:
━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ {detected_service} (your main project)
✅ FREE AI WhatsApp Chatbot ($1,700 value)
✅ 3 months priority support ($1,500 value)
✅ SEO optimization included ($800 value)
✅ Analytics dashboard ($500 value)
✅ Training for your team ($400 value)
━━━━━━━━━━━━━━━━━━━━━━━━━━

Total Value: $15,000 - $50,000+
Your Investment: Custom quote based on scope

And here's the kicker: We'll have your FREE chatbot live NEXT WEEK while we build the main project.

So you start capturing leads immediately. 💰

Sound good? Our team will call you at {customer_phone} within 24 hours to discuss.

You'll get a calendar invite at {customer_email}.

Any questions?
```

**For MID-TIER clients ($3k-$10k):**
```
Here's what I recommend for {company_name}, {customer_name}:

START WITH THE QUICK WIN PACKAGE:
━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ FREE AI Chatbot (get leads flowing NOW)
✅ {detected_service} (main project)
✅ 1 month support
✅ Basic SEO setup
━━━━━━━━━━━━━━━━━━━━━━━━━━

Here's why this is smart:

1️⃣ Chatbot goes live in 48 hours (start seeing ROI ASAP)
2️⃣ {detected_service} builds in parallel (2-6 weeks)
3️⃣ You're making money while we build
4️⃣ Proven formula that works

Our team will call you at {customer_phone} within 24 hours.

You'll get:
→ Confirmation email at {customer_email}
→ Prep document for the call
→ Timeline breakdown

Ready to roll?
```

**For BUDGET-CONSCIOUS clients (<$3k):**
```
Okay {customer_name}, here's the move for {company_name}:

PHASE 1 (FREE):
✅ AI WhatsApp Chatbot setup
✅ Start capturing leads immediately
✅ See if AI + automation works for you

PHASE 2 (When ready):
✅ {detected_service} - we can break it into stages
✅ Start with MVP (Minimum Viable Product)
✅ Add features as budget allows

This way, you're not gambling. You see results FIRST, then invest more.

Our team will call you at {customer_phone} to map out a plan that fits your budget.

Confirmation going to {customer_email} shortly.

Make sense?
```

---

## STEP 10: Objection Handling (Service-Specific)
**Step Name:** `handle_service_objections`  

**Common Objections:**

**"That seems expensive"**
```
I totally get it, {customer_name}. Let's put this in perspective:

{detected_service} that's done RIGHT will make you money.

Example: One of our {business_type} clients spent $8,000 on their website. In the first 3 months, they captured 124 leads worth $67,000 in revenue.

ROI: 738%

But forget the math - here's my question:

What's it COSTING you right now to NOT have a proper {detected_service}?

Lost leads? Lost credibility? Competitors winning because they look more professional?

That's the real expensive part.

Want to at least hear what's possible on the call? No obligation.
```

**"I need to think about it"**
```
Absolutely! Big decisions need thought. 

But can I ask - what specifically do you need to think about?

A) Whether you need {detected_service} at all
B) If now is the right time
C) If we're the right team  
D) Budget/pricing concerns
E) Something else

(Knowing this helps me give you better info to think WITH)
```

**"Can you send me a quote first?"**
```
I wish I could, but here's the problem:

Every {detected_service} project is different. Sending a generic quote would either:

A) Be way too high (scare you off unnecessarily)
B) Be way too low (then surprise you later)
C) Be vague and useless

The FREE consultation is literally just 15-30 minutes where we:
→ Understand exactly what you need
→ Show you examples of similar work
→ Give you an ACCURATE quote
→ Outline exact timeline and deliverables

After that call, you'll have everything you need to decide.

Sound fair?
```

**"I'm talking to other companies too"**
```
Smart! You SHOULD shop around. 🎯

But let me tell you what makes us different:

1️⃣ We give you a FREE AI chatbot (competitors charge $1,700+)
2️⃣ We build to CONVERT, not just look pretty  
3️⃣ We're local (Zimbabwe-based, global quality)
4️⃣ We do it ALL (web, mobile, AI, automation - no juggling vendors)
5️⃣ We guarantee your satisfaction or we make it right

Here's what I suggest:

Take the FREE consultation call. Compare our:
→ Approach
→ Portfolio
→ Pricing
→ Timeline

Then decide. If someone else is better, go with them. But at least you'll know what we offer.

Fair?
```

---

## COMPLETION MESSAGE

**Step Name:** `service_inquiry_completion`  

```
🎉 Perfect, {customer_name}! You're all set!

Here's what happens next for {company_name}:

📞 CALL SCHEDULED:
━━━━━━━━━━━━━━━━━━━━━━━━━━
→ We'll call {customer_phone} within 24 hours
→ FREE {budget >= $10k ? '30' : '15'}-minute consultation
→ Custom proposal for your {detected_service}
→ Timeline and pricing breakdown
━━━━━━━━━━━━━━━━━━━━━━━━━━

📧 CHECK YOUR EMAIL:
→ Confirmation at {customer_email}
→ What to prepare for the call
→ Portfolio examples
→ FAQ document

💬 Questions before the call?
Just message here - I'm available 24/7!

Or talk to a human now:
👉 wa.me/263787938836

Excited to build something amazing for you! 🚀
```

**On Complete Actions:**

1. **Create Lead Record:**
```json
{
  "lead_source": "WhatsApp Chatbot - Service Inquiry",
  "lead_name": "{{customer_name}}",
  "company_name": "{{company_name}}",
  "phone": "{{customer_phone}}",
  "email": "{{customer_email}}",
  "service_interest": "{{detected_service}}",
  "budget_range": "{{budget_range}}",
  "timeline": "{{desired_timeline}}",
  "required_features": "{{required_features}}",
  "lead_status": "New - Service Inquiry",
  "priority": "{{budget >= $10k ? 'High' : budget >= $3k ? 'Medium' : 'Low'}}",
  "follow_up_deadline": "24 hours",
  "notes": "Service inquiry flow completed. {{service_need_type}}. Ready for consultation call."
}
```

2. **Email Notifications:**
   - To Sales Team (with all details + priority flag)
   - To Customer (confirmation + prep document)

3. **CRM Integration:**
   - Create opportunity
   - Assign to appropriate team member
   - Set follow-up reminder

4. **Internal Slack Notification:**
   - Alert relevant department
   - Flag high-value leads

---

## HUMAN TRANSFER

**If requested at any point:**

```
Absolutely! Let me connect you with a human right now.

I'll pass along everything we discussed:
✅ {detected_service} interest
✅ Budget range: {budget_range}
✅ Timeline: {desired_timeline}
✅ Features needed: {required_features}

Someone from our team will jump in within 2-3 minutes! 👇
```

**Actions:**
- Transfer conversation
- Pass all variables
- Update status to "Human Engaged"

---

**END OF FLOW 02**