# FLOW 03: PRICING INQUIRY HANDLER
## The "How Much Does It Cost?" Flow

**Flow Name:** Pricing Inquiry  
**Flow ID:** `pricing_inquiry`  
**Trigger Keywords:** price, pricing, cost, how much, expensive, cheap, affordable, fee, rate, quote  
**Priority:** HIGH (9)  
**Active:** Yes  

---

## INITIAL MESSAGE (The Reframe)

```
Great question! 💰

But here's the thing - asking "how much?" is like asking "how much is a car?" 

It depends, right? 

Are we talking Toyota Corolla or Tesla Model S? 🚗⚡

Same with our services. The price depends on what you need.

BUT - I can help you figure out exactly what it'll cost for YOUR situation.

First, what are you interested in?

1️⃣ FREE AI Chatbot (yes, actually free)
2️⃣ Website Development
3️⃣ Mobile App Development
4️⃣ Business Automation
5️⃣ Custom AI Agents
6️⃣ Not sure / Multiple things
```

---

## STEP 1: Service Selection
**Step Name:** `pricing_service_select`  
**Store As:** `pricing_service_interest`  

**Branching:**

**IF Option 1 (FREE Chatbot):**
```
Perfect! This one's easy:

AI WhatsApp Chatbot Setup:
━━━━━━━━━━━━━━━━━━━━━━━━━━
Regular Price: $1,700
Your Price: $0 
Savings: $1,700 (100% off!)
━━━━━━━━━━━━━━━━━━━━━━━━━━

Yes, ZERO dollars. Completely free. No credit card. No catch.

What's included:
✅ Custom AI training on your business
✅ WhatsApp integration setup
✅ 24/7 automated responses
✅ Lead capture system
✅ 30-day support

Why free? Because we only have 7 spots per month and we want to prove our value.

Want to claim one of the remaining spots?
```
→ Go to MAIN LEAD CAPTURE FLOW (Step 4 - Name Capture)

**IF Option 2-5 (Paid Services):**
```
Okay, let's talk real numbers for {selected_service}. 💵

But first - are you also getting the FREE chatbot?

Most smart clients start with the free chatbot to capture leads immediately, THEN we build their {selected_service}.

Want both? (Yes/No)
```

**IF "Not sure / Multiple":**
```
No problem! Let's figure out what you ACTUALLY need.

Quick question: What's your #1 goal right now?

A) Get more leads/customers
B) Look more professional online
C) Automate repetitive tasks
D) Build something completely new
E) Fix/improve something broken
```
→ Based on answer, recommend service + pricing

---

## STEP 2: Pricing Ranges (Value Anchoring)
**Step Name:** `present_pricing_ranges`  

**For WEBSITES:**
```
Here's how website pricing works:

🌐 WEBSITE PRICING TIERS:
━━━━━━━━━━━━━━━━━━━━━━━━━━

💎 LANDING PAGE:
$1,500 - $3,000
→ Single page, high-converting
→ Perfect for campaigns/offers
→ 1-2 week delivery

🏢 BUSINESS WEBSITE:
$3,000 - $8,000  
→ 5-10 pages
→ Professional design
→ SEO optimized
→ Mobile responsive
→ 3-6 week delivery

🛒 E-COMMERCE STORE:
$8,000 - $20,000+
→ Full online store
→ Payment integration
→ Product management
→ Advanced features
→ 6-12 week delivery

🚀 CUSTOM WEB APP:
$15,000 - $50,000+
→ Complex functionality
→ Database-driven
→ API integrations
→ Scalable architecture
→ 8-16 week delivery

━━━━━━━━━━━━━━━━━━━━━━━━━━

Which tier matches what you need?
```

**For MOBILE APPS:**
```
Here's the reality of mobile app pricing:

📱 MOBILE APP PRICING:
━━━━━━━━━━━━━━━━━━━━━━━━━━

📲 BASIC APP (MVP):
$10,000 - $25,000
→ 2-3 core features
→ Simple UI/UX
→ Cross-platform (iOS + Android)
→ App store deployment
→ 8-12 week delivery

📱 STANDARD APP:
$25,000 - $50,000
→ 5-7 features
→ Professional design
→ Backend integration
→ Push notifications
→ User accounts
→ 12-16 week delivery

🎯 ADVANCED APP:
$50,000 - $150,000+
→ 10+ features
→ Complex functionality
→ Real-time features
→ Third-party integrations
→ Advanced security
→ 16-24+ week delivery

━━━━━━━━━━━━━━━━━━━━━━━━━━

Keep in mind: Building an app RIGHT costs more upfront but saves you 10x on fixes later.

Which range fits your budget?
```

**For AUTOMATION:**
```
Automation pricing depends on complexity:

⚙️ N8N AUTOMATION PRICING:
━━━━━━━━━━━━━━━━━━━━━━━━━━

🔧 STARTER PACKAGE:
$2,000 - $5,000
→ 1-3 basic workflows
→ Simple integrations
→ Setup + training
→ 1-2 week delivery

⚡ BUSINESS PACKAGE:
$5,000 - $15,000
→ 5-10 workflows
→ Multiple platform integrations
→ Advanced logic
→ Custom reporting
→ 3-5 week delivery

🚀 ENTERPRISE PACKAGE:
$15,000 - $50,000+
→ Unlimited workflows
→ Complex systems integration
→ Custom development
→ Ongoing optimization
→ 6-12 week delivery

━━━━━━━━━━━━━━━━━━━━━━━━━━

ROI Note: Most clients save 20+ hours/week. That pays for itself in 2-3 months.

What's your budget range?
```

**For CUSTOM AI AGENTS:**
```
AI Agents are priced by capability:

🤖 AI AGENT PRICING:
━━━━━━━━━━━━━━━━━━━━━━━━━━

💬 BASIC AGENT:
$1,000 - $3,000 each
→ Single-purpose bot
→ Pre-trained templates
→ Basic customization
→ 1 week delivery

🎯 CUSTOM AGENT:
$3,000 - $10,000 each
→ Fully custom training
→ Complex workflows
→ API integrations
→ 2-4 week delivery

🏢 ENTERPRISE SUITE:
$25,000 - $100,000+
→ Multiple specialized agents
→ Full ecosystem integration
→ Advanced AI capabilities
→ Ongoing optimization

━━━━━━━━━━━━━━━━━━━━━━━━━━

Remember: You get the FREE WhatsApp chatbot regardless! This is for additional AI agents.

How many agents are you thinking?
```

---

## STEP 3: Budget Qualification
**Step Name:** `qualify_budget`  

**Message:**
```
Thanks for letting me know! 

Real talk: Does that budget range feel comfortable for you, or are you stretching?

A) Comfortable - this is allocated budget
B) Stretching - but worth it for the right solution  
C) Too high - need to find a way to reduce
D) No idea - just exploring options
```

**Branching:**

**IF "Comfortable":**
```
Perfect! You're in the sweet spot. ✅

Here's what happens next:

1️⃣ FREE consultation call (15-30 min)
2️⃣ We show you exactly what you'll get
3️⃣ Custom proposal with accurate pricing
4️⃣ Timeline and milestone breakdown

PLUS: You still get the FREE chatbot setup! 🎁

Can I get your contact info to schedule the call?
```
→ Go to contact capture

**IF "Stretching":**
```
I appreciate the honesty! 

Here's what I recommend:

💡 THE SMART PLAY:
━━━━━━━━━━━━━━━━━━━━━━━━━━
1️⃣ Start with FREE chatbot (zero risk)
2️⃣ See how AI helps your business
3️⃣ Use that ROI to fund {selected_service}
4️⃣ OR break {selected_service} into phases

━━━━━━━━━━━━━━━━━━━━━━━━━━

This way, you're not gambling your budget.

Sound smart?

Let's at least get you that free chatbot. Contact info?
```
→ Go to contact capture

**IF "Too high":**
```
I hear you! Let me see what we can do. 💪

Few options:

OPTION A: Phase It Out
→ Build in stages as budget allows
→ Get core features first
→ Add more later

OPTION B: Start Smaller
→ Landing page instead of full website
→ Cross-platform app instead of native
→ 3 automations instead of 10

OPTION C: Free Chatbot + Wait
→ Get the FREE chatbot now
→ Start seeing ROI
→ Use profits to fund bigger project

Which sounds best?
```

**IF "No idea":**
```
Totally normal! Most people don't know until they see what's possible.

Here's the deal:

On our FREE consultation call, we'll:
→ Understand what you need
→ Show you 3 options (good, better, best)
→ Give you accurate pricing for each
→ Let YOU decide what fits

Zero pressure. Zero obligation.

Sound good? What's your contact info?
```

→ All lead to contact capture

---

## STEP 4: The Value Reframe
**Step Name:** `reframe_value_vs_cost`  

**Before collecting contact info:**

```
Before we move forward, let me flip this conversation... 🔄

You asked "How much does it cost?"

But the REAL question is: "What's it worth?"

Example: A {selected_service} that costs $10,000 but generates $100,000 in revenue isn't expensive - it's a 10x ROI.

Meanwhile, a $2,000 {selected_service} that does nothing is overpriced.

We don't build to win "cheapest price" awards. 

We build to make you MONEY. 💰

On the consultation call, we'll show you EXACTLY what ROI to expect.

Fair?
```

**Wait for confirmation, then:**

```
Perfect! Let's get you scheduled.

What's your name?
```

---

## STEP 5: Contact Capture
**Step Name:** `pricing_contact_capture`  

**Sub-step 5a: Name**
```
What's your name?
```
**Store as:** `customer_name`

**Sub-step 5b: Phone**
```
Thanks {customer_name}! Phone number?
```
**Store as:** `customer_phone`

**Sub-step 5c: Email**
```
And email address?
```
**Store as:** `customer_email`

**Sub-step 5d: Company (Optional)**
```
Last one - company name? (Or just type "skip")
```
**Store as:** `company_name`

---

## STEP 6: Free Chatbot Upsell
**Step Name:** `chatbot_add_on`  

**Message:**
```
Almost done! 

Just to confirm: You ARE claiming one of the FREE chatbot spots, right?

This gives you:
✅ Leads captured while we build your {selected_service}
✅ Start seeing ROI immediately  
✅ Test AI before bigger investment
✅ $1,700 value for $0

Only 7 spots left this month.

Want it? (Yes/No)
```

**IF Yes:**
```
Smart! 🧠

You're getting:
1️⃣ FREE AI WhatsApp Chatbot (setup this week)
2️⃣ Consultation for {selected_service}
3️⃣ Custom proposal + pricing

Total value: $2,000+
Your cost: $0 (for chatbot) + TBD (for {selected_service})

You'll get TWO emails:
→ Chatbot confirmation (immediate)
→ Consultation scheduling (within 24 hrs)

Watch for them at {customer_email}!
```

**IF No:**
```
No problem! Just the {selected_service} consultation then.

You'll get:
→ Call from our team within 24 hours
→ Custom proposal + accurate pricing
→ Timeline and deliverables breakdown

All info going to {customer_email}.

If you change your mind about the free chatbot, just let me know!
```

---

## COMPLETION MESSAGE

```
🎉 All set, {customer_name}!

━━━━━━━━━━━━━━━━━━━━━━━━━━
YOUR NEXT STEPS:
━━━━━━━━━━━━━━━━━━━━━━━━━━

📞 Expect a call at {customer_phone} within 24 hours

📧 Check {customer_email} for:
   → Confirmation
   → Pricing guide
   → Portfolio examples
   → FAQ document

💬 Questions? I'm here 24/7!

Or talk to human now:
👉 wa.me/263787938836

━━━━━━━━━━━━━━━━━━━━━━━━━━

Pro tip: Before the call, write down your top 3 must-have features. Helps us give you a more accurate quote! ✍️
```

**On Complete Actions:**

```json
{
  "lead_source": "WhatsApp Chatbot - Pricing Inquiry",
  "lead_name": "{{customer_name}}",
  "company_name": "{{company_name}}",
  "phone": "{{customer_phone}}",
  "email": "{{customer_email}}",
  "service_interest": "{{pricing_service_interest}}",
  "budget_awareness": "{{qualify_budget}}",
  "wants_free_chatbot": "{{chatbot_add_on}}",
  "lead_status": "New - Pricing Inquiry",
  "priority": "Medium",
  "follow_up_deadline": "24 hours",
  "notes": "Pricing inquiry flow. Budget discussion completed."
}
```

---

## SPECIAL CASE: "That's Too Expensive" Objection

**Trigger:** User says anything like "too expensive", "can't afford", "too much"

**Response:**
```
I totally get it. Let me be straight with you.

There are 3 types of {selected_service} providers:

💸 CHEAP ($500-$1,500):
→ Templates/DIY
→ Looks okay, works poorly
→ You get what you pay for
→ Hidden costs later

💰 US (Market rate):
→ Custom solutions
→ Professional quality
→ Proven results
→ Fair pricing

💎 PREMIUM ($50k+):
→ Enterprise agencies
→ Same quality as us
→ 3-5x our price
→ Big overhead

We're not the cheapest, and we're not trying to be.

We're the best VALUE - quality work that makes you money without the agency markup.

But hey, if budget is tight, let's start with the FREE chatbot.

No risk, immediate value, and it might just generate enough revenue to fund the bigger project.

Sound fair?
```

---

**END OF FLOW 03**