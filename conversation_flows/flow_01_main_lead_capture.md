# FLOW 01: MAIN LEAD CAPTURE & QUALIFICATION
## The Alex Hormozi Grand Slam Offer Flow

**Flow Name:** Main Lead Magnet - Free Chatbot Offer  
**Flow ID:** `main_lead_capture`  
**Trigger Keywords:** hi, hello, hey, start, chatbot, free, interested, help, info, information, services  
**Priority:** HIGH (10)  
**Active:** Yes  

---

## INITIAL MESSAGE (The Hook)

```
👋 Hey there! I'm Tessa, Instel Technologies' AI assistant.

I noticed you're interested in how AI can help your business! 

Quick question: Are you losing customers because you can't respond fast enough? 

Most businesses lose 78% of their leads to competitors who respond FIRST. But I have something that can fix that... 🚀

Reply with:
1️⃣ - Tell me more
2️⃣ - I'm just browsing
3️⃣ - Talk to a human
```

---

## CONVERSATION FLOW STEPS

### STEP 1: Interest Confirmation & Dream Outcome
**Step Name:** `confirm_interest`  
**Type:** Button Response  
**Wait For:** Button Click or Text Input (1, 2, or 3)  

**Branching Logic:**

**IF Option 1 (Tell me more):**
```
Perfect! 🎯

Here's the deal: We're giving away FREE AI WhatsApp chatbots (normally $1,700 value) to help businesses like yours capture leads 24/7.

Think about it: While you're sleeping, eating, or on vacation, your competitors are stealing your customers. 

With our AI chatbot, you'll NEVER miss another lead. ⚡

But first, I need to know if you qualify...

What type of business do you run?
```
→ Go to STEP 2

**IF Option 2 (Just browsing):**
```
No worries! 😊

Before you go, did you know that 5 minutes is all it takes for a lead to go COLD? 

We're offering FREE AI chatbot setup (worth $1,700) - no credit card, no catch. Only 7 spots left this month.

Even if you're just exploring, it costs you nothing to see if you qualify.

Want to at least check if this could work for your business? (Yes/No)
```
→ **IF Yes:** Go to STEP 2  
→ **IF No:** Go to SOFT CLOSE

**IF Option 3 (Talk to human):**
```
Absolutely! I'll connect you with our team right away. 

But while I'm getting them - quick question: Are you interested in our FREE chatbot offer or something else?

1️⃣ Free Chatbot
2️⃣ Website/App Development
3️⃣ Business Automation
4️⃣ Other/Not Sure
```
→ Go to HUMAN TRANSFER FLOW with context

---

### STEP 2: Business Type Qualification
**Step Name:** `ask_business_type`  
**Message Type:** Button List  
**Store As:** `business_type`  
**Validation:** Required  

**Message:**
```
Great! Let's see if you qualify for the FREE chatbot. 🎁

What type of business do you run?
```

**Buttons:**
- E-commerce / Online Store
- Restaurant / Food Service
- Real Estate / Property
- Professional Services (Law, Consulting, etc.)
- Healthcare / Medical / Clinic
- Salon / Spa / Beauty
- Retail / Brick & Mortar
- Construction / Contracting
- Automotive / Car Sales & Service
- Education / Training / Coaching
- Fitness / Gym / Wellness
- Hotel / Lodge / Tourism
- Other

**On Selection:** → Go to STEP 3

---

### STEP 3: Pain Point Identification (The Problem)
**Step Name:** `identify_pain_point`  
**Store As:** `main_pain_point`  

**Message:**
```
Perfect! {business_type} is exactly the kind of business that benefits MASSIVELY from AI automation. 💪

Here's a reality check: What's your biggest headache right now?

A) Losing leads because we respond too slowly
B) Can't afford 24/7 customer service staff  
C) Team overwhelmed with repetitive questions
D) Missing sales during off-hours
E) All of the above 😅
```

**Branching Logic:**

**FOR ALL OPTIONS:**
```
I KNEW IT! 🎯

Listen, you're not alone. {pain_point} is costing you thousands every month.

But here's the good news: Our AI chatbot solves this EXACT problem. And right now, we're setting it up for FREE.

Here's what you get:
✅ 24/7 automated responses (Value: $200/mo)
✅ Custom AI training on YOUR business (Value: $500)
✅ WhatsApp integration setup (Value: $300)
✅ Built-in lead capture system (Value: $400)
✅ 30-day support included (Value: $300)

Total Value: $1,700
Your Cost: $0 ⚡

Sound good? I just need a few quick details to get you set up...
```
→ Go to STEP 4

---

### STEP 4: Urgency + Name Capture
**Step Name:** `capture_name`  
**Input Type:** Text  
**Store As:** `customer_name`  
**Validation:** Required (min 2 characters)  
**Retry Message:** "I need your name to reserve your spot! What should I call you?"  

**Message:**
```
⚠️ IMPORTANT: We only have 7 FREE spots left this month.

These usually fill up within 48 hours, so I need to move fast to secure yours.

First, what's your name?
```

**On Success:** → Go to STEP 5

---

### STEP 5: Phone Number Capture (The Commitment)
**Step Name:** `capture_phone`  
**Input Type:** Phone  
**Store As:** `customer_phone`  
**Validation:** Valid phone format  
**Retry Message:** "Please enter a valid phone number (e.g., +263 XXX XXX XXX)"  

**Message:**
```
Thanks {customer_name}! 🙌

What's the best phone number to reach you at? 

(This is where our team will call you within 24 hours for the FREE strategy call)
```

**On Success:** → Go to STEP 6

---

### STEP 6: Email Capture
**Step Name:** `capture_email`  
**Input Type:** Email  
**Store As:** `customer_email`  
**Validation:** Valid email format  
**Retry Message:** "Oops! That doesn't look like a valid email. Try again?"  

**Message:**
```
Perfect! And what's your email address?

(We'll send you confirmation and setup details here)
```

**On Success:** → Go to STEP 7

---

### STEP 7: Business Size Qualification
**Step Name:** `ask_business_size`  
**Message Type:** Button List  
**Store As:** `business_size`  

**Message:**
```
Almost done, {customer_name}! 

How many employees do you have?

(This helps us customize your chatbot perfectly)
```

**Buttons:**
- Just me (solo)
- 2-4 employees
- 5-9 employees
- 10-19 employees
- 20-49 employees
- 50+ employees

**On Selection:** → Go to STEP 8

---

### STEP 8: Revenue Qualification (For Custom Solutions)
**Step Name:** `ask_revenue`  
**Message Type:** Button List  
**Store As:** `annual_revenue`  

**Message:**
```
Last question! What's your approximate annual revenue?

(No judgment - this just helps us know what other solutions might benefit you)
```

**Buttons:**
- Under $100k
- $100k - $250k
- $250k - $500k
- $500k - $1M
- $1M - $3M
- $3M - $10M
- $10M+
- Prefer not to say

**On Selection:** → Go to STEP 9

---

### STEP 9: The Close + Upsell Opportunity
**Step Name:** `final_confirmation`  

**Branching Logic Based on Revenue:**

**IF revenue < $500k:**
```
Perfect, {customer_name}! ✨

You're ALL SET for the FREE chatbot!

Here's what happens next:
1️⃣ Our team calls you within 24 hours
2️⃣ Quick 15-min strategy call to understand your business
3️⃣ Your custom AI chatbot goes live within 48 hours
4️⃣ You start capturing leads 24/7 while you sleep 😴💰

🎁 BONUS: Since you're a {business_type}, I'm also including our industry-specific FAQ template (saves you 2+ hours of setup!)

Your confirmation details:
━━━━━━━━━━━━━━━━
👤 Name: {customer_name}
📞 Phone: {customer_phone}
✉️ Email: {customer_email}
🏢 Business: {business_type}
👥 Team Size: {business_size}
━━━━━━━━━━━━━━━━

You'll get a confirmation email at {customer_email} in the next 5 minutes.

⚠️ IMPORTANT: Keep an eye on your phone - we'll call from +263 787 938 836

Any questions before we lock this in?
```

**IF revenue >= $500k:**
```
Wow, {customer_name}! 🚀

You're definitely getting the FREE chatbot, but honestly... I think you're leaving money on the table.

With {annual_revenue} in revenue, you should be looking at our COMPLETE digital ecosystem:

💎 PREMIUM PACKAGE (What businesses your size need):
✅ FREE AI WhatsApp Chatbot (we're giving you this anyway)
✅ High-converting website ($3k-$8k value)
✅ Mobile app for iOS & Android ($15k-$30k value)
✅ Complete n8n automation system ($5k-$12k value)
✅ 5+ specialized AI agents ($2k+ value each)

Total Value: $40k-$70k+
Your Investment: Custom quote (we make it work)
ROI Timeline: 3-6 months

Here's what happens next:
1️⃣ Our team calls you within 24 hours
2️⃣ 30-min strategy call (not 15 min - you need more)
3️⃣ Custom proposal for complete digital transformation
4️⃣ FREE chatbot setup while we scope the bigger project

Your confirmation:
━━━━━━━━━━━━━━━━
👤 Name: {customer_name}
📞 Phone: {customer_phone}
✉️ Email: {customer_email}
🏢 Business: {business_type}
👥 Team Size: {business_size}
💰 Revenue: {annual_revenue}
🎯 Track: PREMIUM OPPORTUNITY
━━━━━━━━━━━━━━━━

Sound good? Reply "YES" to confirm.
```

**IF "YES":**
→ Go to COMPLETION MESSAGE

**IF "NO" or hesitation:**
→ Go to OBJECTION HANDLER

---

### STEP 10: Objection Handler
**Step Name:** `handle_objections`  

**Message:**
```
I totally get it, {customer_name}. Let me address what you might be thinking:

🤔 "Is this really free?"
→ YES. Zero cost. No credit card. No hidden fees. We want to prove our value.

🤔 "What's the catch?"
→ No catch. We limit to 7 spots/month to ensure quality. After you see results, you might want our other services. But that's 100% optional.

🤔 "I need to think about it"
→ Fair enough! But these 7 spots fill FAST. I can hold your spot for 24 hours - after that, no guarantees.

🤔 "I'm not sure this will work for my business"
→ That's EXACTLY why we offer the free strategy call! Let our team show you specific examples from {business_type} businesses.

Still hesitant? What's your main concern?
```

**Wait for response, then:**
```
I hear you. Look, worst case scenario? 

You get a free 15-minute call with our team, learn something valuable about AI for your business, and if it's not a fit, we part as friends. 

Best case? You get a FREE $1,700 chatbot that starts making you money 24/7.

All I need is a "YES" to secure your spot. What do you say?
```

**IF "YES":** → COMPLETION MESSAGE  
**IF still "NO":** → SOFT CLOSE with email capture for nurture sequence

---

## COMPLETION MESSAGE & ACTIONS

**Step Name:** `completion`  
**Message:**
```
🎉 BOOM! You're in, {customer_name}! 

Your FREE chatbot spot is SECURED! 🔒

Check your email ({customer_email}) for:
✅ Confirmation details
✅ What to prepare for the strategy call
✅ FAQ document about the setup process

📞 We'll call you from +263 787 938 836 within 24 hours.

In the meantime, got questions? Just ask! I'm here 24/7.

Or connect with a human now: wa.me/263787938836

See you on the call! 🚀
```

**On Complete Actions:**
1. **Create Lead Record:**
```json
{
  "lead_source": "WhatsApp Chatbot - Main Flow",
  "lead_name": "{{customer_name}}",
  "phone": "{{customer_phone}}",
  "email": "{{customer_email}}",
  "business_type": "{{business_type}}",
  "business_size": "{{business_size}}",
  "annual_revenue": "{{annual_revenue}}",
  "pain_point": "{{main_pain_point}}",
  "lead_status": "New - Free Chatbot",
  "priority": "{{revenue >= $500k ? 'High' : 'Medium'}}",
  "follow_up_deadline": "24 hours",
  "notes": "Completed main lead capture flow. Ready for strategy call."
}
```

2. **Send Email Notification to Sales Team:**
   - Subject: "🔥 NEW HOT LEAD: {customer_name} - {business_type}"
   - Include all captured data
   - Flag if revenue >= $500k for premium track

3. **Send Confirmation Email to Customer:**
   - Welcome email with next steps
   - Calendar invite suggestion
   - Link to prepare for call

4. **Add to WhatsApp Broadcast List:**
   - Tag: "Free Chatbot Leads - {current_month}"

5. **Schedule Follow-up:**
   - If no call scheduled within 24 hours → Automated reminder via WhatsApp
   - If no call scheduled within 48 hours → Escalate to sales manager

---

## SOFT CLOSE (For Those Who Decline)

**Message:**
```
No problem at all, {customer_name}! 

I respect that you're not ready right now. 

Can I at least send you our FREE guide: "5 Ways AI Chatbots Increase Revenue (Even for Small Businesses)"?

What's your email? 

(Takes 2 seconds, could save you thousands in lost leads)
```

**IF provides email:**
```
Perfect! Check {customer_email} in the next 5 minutes.

And hey - if you change your mind about the FREE chatbot, just message "READY" and I'll get you set up.

Those 7 spots won't last long though! 😉
```
→ **Action:** Add to nurture email sequence  
→ **Action:** Create "Warm Lead" record with "Not Ready" status

**IF declines email:**
```
I understand! If you ever need help with AI, websites, apps, or automation, we're here.

Just message anytime. Have an awesome day! 🙌
```
→ **Action:** Log as "Cold Lead - Declined"  
→ **Action:** Add to monthly newsletter list

---

## HUMAN TRANSFER PROTOCOL

**When user requests human or gets stuck:**

```
Absolutely! Connecting you to our team now... ⚡

While they're getting ready, here's what you're interested in: {captured_context}

One of our specialists will jump in within the next 2-3 minutes during business hours (or first thing tomorrow if after hours).

Their name will show up in the next message! 👇
```

**Actions:**
1. Send notification to available agent
2. Pass all collected variables
3. Transfer conversation ownership
4. Update lead status to "In Conversation - Human"

---

## NOTES FOR IMPLEMENTATION

### Timing Optimizations:
- Add 2-second delays between messages to feel natural
- For longer messages, use typing indicators
- Don't rush - let them read

### Personalization Variables:
Use throughout conversation:
- {customer_name}
- {business_type}
- {pain_point}
- {business_size}
- {annual_revenue}

### A/B Testing Opportunities:
- Test different hook messages in INITIAL MESSAGE
- Test urgency language ("7 spots" vs "Limited availability")
- Test value presentation (bullet points vs paragraph)

### Analytics to Track:
- Conversion rate at each step
- Drop-off points
- Average time to complete
- Revenue tier distribution
- Most common pain points
- Most common objections

---

## PSYCHOLOGICAL TRIGGERS USED (Alex Hormozi Framework)

1. **Scarcity:** Only 7 spots available
2. **Urgency:** Spots fill within 48 hours
3. **Value Stacking:** $1,700 value broken down
4. **Social Proof:** 78% statistic, competitor angle
5. **Pain Points:** Lost leads, slow responses
6. **Dream Outcome:** 24/7 lead capture, more revenue
7. **Risk Reversal:** FREE with no credit card
8. **Authority:** Industry-specific knowledge
9. **Commitment Escalation:** Small yes → bigger yes
10. **FOMO:** Competitors stealing customers

---

**END OF FLOW 01**