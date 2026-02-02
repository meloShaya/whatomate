# FLOW 06: HUMAN HANDOFF & ESCALATION
## When AI Needs Human Backup

**Flow Name:** Human Transfer Protocol  
**Flow ID:** `human_handoff`  
**Trigger Keywords:** human, person, agent, representative, speak to someone, real person, manager, supervisor, complaint  
**Priority:** VERY HIGH (11)  
**Active:** Yes  

---

## INITIAL HANDOFF MESSAGE

```
Absolutely! I'll connect you with a human team member right now. 👤

Before I do, let me make sure they have context:

What's this regarding?

1️⃣ FREE chatbot setup
2️⃣ Custom project (web/app/automation)
3️⃣ Technical issue
4️⃣ Billing/payment question
5️⃣ Complaint or concern
6️⃣ Other
```

---

## HANDOFF PROTOCOLS BY TYPE

### TYPE 1: Free Chatbot Setup

```
Perfect! Connecting you about the FREE chatbot.

Let me pass along what we've discussed:
━━━━━━━━━━━━━━━━━━━━━━━━━━
{if captured:}
→ Name: {customer_name}
→ Business: {business_type}
→ Contact: {customer_phone} / {customer_email}
→ Main concern: {pain_point}
{end if}
━━━━━━━━━━━━━━━━━━━━━━━━━━

One of our specialists will be with you in 2-3 minutes during business hours.

If it's after hours, someone will respond first thing tomorrow morning (8am Zimbabwe time).

They'll introduce themselves below! 👇
```

**Actions:**
1. Alert available agent via Slack/Dashboard
2. If business hours: Assign to available agent
3. If after hours: Create ticket for next day follow-up
4. Pass all conversation history
5. Tag priority based on qualification level
6. Set SLA: 3 minutes during hours, 8am next day after hours

---

### TYPE 2: Custom Project

```
Got it! Let me connect you with our {web/mobile/automation} team.

Context I'm sharing:
━━━━━━━━━━━━━━━━━━━━━━━━━━
Project Interest: {detected_service}
Budget Range: {budget_range if captured}
Timeline: {desired_timeline if captured}
Features Needed: {required_features if captured}

Your Info:
→ Name: {customer_name}
→ Company: {company_name}
→ Contact: {customer_phone} / {customer_email}
━━━━━━━━━━━━━━━━━━━━━━━━━━

A specialist will jump in shortly!

💡 While waiting: Are you also grabbing the FREE chatbot? It could launch while we plan your main project...
```

**Actions:**
1. Route to appropriate department (web/mobile/automation)
2. Flag priority based on budget (High = $10k+, Medium = $3k-$10k, Low = <$3k)
3. Attach all conversation data
4. SLA: 5 minutes during hours, scheduled callback if after hours

---

### TYPE 3: Technical Issue

```
Okay, technical support coming up! 🔧

Quick questions so they can help faster:

1️⃣ Are you an existing customer or new?
2️⃣ What's the issue? (Brief description)
3️⃣ Is this urgent/blocking your business?
```

**Wait for responses, then:**

```
Thanks! I've escalated this to our tech team.

{if urgent:}
⚠️ URGENT FLAG added - they'll prioritize you.
{endif}

Someone will be right with you!

For reference: Ticket #{ticket_id}
```

**Actions:**
1. Create support ticket
2. Route to technical support team
3. If urgent: Page on-call engineer
4. SLA: Urgent = 15 min, Standard = 2 hours

---

### TYPE 4: Billing/Payment

```
No problem! Let me connect you with our accounts team.

Quick info:
→ Regarding: {new_invoice / existing_project / payment_plan / refund / other}
→ Your details: {customer_name} / {customer_email}

Someone will be with you shortly!

💡 If this is about payment for a custom project, remember we offer:
   → Payment plans
   → Phased payments
   → Multiple payment methods

The team will discuss options! 💰
```

**Actions:**
1. Route to accounts/finance team
2. Attach customer record if exists
3. SLA: 1 hour during business hours

---

### TYPE 5: Complaint/Concern

**IMPORTANT: Handle with extra care**

```
I'm really sorry to hear you're having concerns. 😔

I want to make sure you talk to someone who can actually help fix this.

Can you tell me briefly what happened so I can connect you with the right person?

(And I promise, we take all feedback seriously. We'll make this right.)
```

**Wait for explanation, then:**

```
Thank you for explaining. I'm escalating this to {manager/director} level immediately.

What you shared:
"{user_complaint}"

Someone senior will reach out within:
→ 30 minutes if business hours
→ First thing tomorrow if after hours

You'll also get:
→ Email confirmation
→ Ticket reference: #{ticket_id}
→ Direct contact info for follow-up

We will resolve this. 

Is there anything urgent I should flag?
```

**Actions:**
1. **URGENT:** Create high-priority ticket
2. Alert management immediately
3. Log detailed complaint notes
4. Send confirmation email to customer
5. CC customer support manager
6. SLA: 30 minutes

---

### TYPE 6: Other

```
No problem! Let me get someone on this.

Can you give me a quick 1-sentence description of what you need help with?

(Just so I connect you with the right specialist)
```

**Wait for response, route appropriately**

---

## DURING BUSINESS HOURS (MON-FRI 8AM-6PM ZIM TIME)

**If agent available (within 3 minutes):**

```
[AGENT NAME] is jumping in now! 🎉

Hello! I'm [Agent Name] from Instel Technologies. I've reviewed your conversation with Tessa and I'm here to help with {topic}.

{agent_personalized_greeting}
```

**If agent delayed (3-5 minutes):**

```
Our team is with another customer right now, but you're next in queue.

Average wait: 2-3 minutes

While you wait:
→ Check out our portfolio: insteltech.co.zw
→ Read recent case studies
→ Or ask me anything else!

You'll get a notification when they join! 🔔
```

**If no agent available (>5 minutes):**

```
Our team is currently with other customers.

Rather than keep you waiting, can I:

A) Schedule a callback (within 1 hour)
B) Have them call you ASAP (when available)
C) Keep waiting in queue
D) Email response instead

What works best?
```

---

## AFTER BUSINESS HOURS

```
Thanks for reaching out!

Our team is currently offline (office hours: Mon-Fri 8am-6pm Zimbabwe time).

Here's what happens next:

📞 CALLBACK OPTION:
Someone will call you at {customer_phone} first thing tomorrow morning (8am).

✉️ EMAIL OPTION:
Full response sent to {customer_email} within 12 hours.

💬 MORNING WHATSAPP:
Message here tomorrow when we're online.

Which do you prefer?
```

**Based on choice:**

```
Perfect! {preference} confirmed.

In the meantime:
→ Browse our portfolio: insteltech.co.zw
→ Read FAQs
→ Check pricing guide

Or just come back tomorrow! We'll be here 8am sharp. ⏰

Your reference: #{ticket_id}
```

---

## EMERGENCY ESCALATION

**Trigger Words:** urgent, emergency, down, broken, critical, losing money, can't access

```
⚠️ I'm flagging this as URGENT.

Let me get you to our on-call team RIGHT NOW.

Stand by...

{Immediately page on-call manager}
{Send SMS alert}
{Create critical ticket}

Someone will respond within 15 minutes maximum.

What's your best contact number for an immediate callback?
```

---

## VIP/HIGH-VALUE CLIENT DETECTION

**Triggers:**
- Budget mentioned >$20k
- Existing customer with active project
- Referred by partner
- Executive title mentioned

```
I see you're {vip_reason}.

Let me connect you with our senior team directly.

{Name of senior team member} will be with you shortly - they handle our premium clients personally.

Stand by... 👑
```

**Actions:**
1. Page senior team member directly
2. Flag as VIP
3. Bypass normal queue
4. SLA: 2 minutes or schedule direct call

---

## HANDOFF QUALITY CHECKS

**Before transfer, AI confirms:**

✅ Customer name captured (or marked as Anonymous)  
✅ Issue type identified  
✅ Relevant context collected  
✅ Previous conversation history available  
✅ Contact information verified  
✅ Urgency level set  
✅ Ticket created  
✅ Appropriate team notified  

---

## AGENT ONBOARDING MESSAGE

**What agent sees when they join:**

```
━━━━━━━━━━━━━━━━━━━━━━━━━━
NEW TRANSFER FROM TESSA
━━━━━━━━━━━━━━━━━━━━━━━━━━

CUSTOMER INFO:
→ Name: {customer_name}
→ Phone: {customer_phone}
→ Email: {customer_email}
→ Company: {company_name}

ISSUE TYPE: {issue_type}
PRIORITY: {priority_level}
TICKET: #{ticket_id}

CONTEXT:
{conversation_summary}

KEY POINTS:
{bullet_points_of_conversation}

NEXT STEPS RECOMMENDED:
{ai_suggested_next_steps}

━━━━━━━━━━━━━━━━━━━━━━━━━━
Full transcript available in dashboard
━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## IF HANDOFF FAILS (No Agent Available After 10 Min)

```
I'm so sorry for the wait! 😔

Our team is handling an unusually high volume right now.

Here's what I can do:

1️⃣ SCHEDULE CALLBACK
   → Specific time that works for you
   → Guaranteed slot

2️⃣ EMAIL RESPONSE  
   → Detailed answer within 4 hours
   → With direct contact info

3️⃣ CONTINUE WITH ME
   → I'll do my best to help
   → Escalate if needed

What works best?
```

---

## POST-TRANSFER FOLLOW-UP

**2 hours after handoff, automated check:**

```
Hey! Tessa here checking in.

Did {agent_name} get you sorted out?

Just want to make sure you got what you needed! 😊

Reply:
👍 - All good!
👎 - Still need help
💬 - Have feedback
```

**IF 👎:**
```
Oh no! Let me escalate this.

What's still not resolved?

{Immediate escalation to manager}
```

**IF 💬:**
```
I'd love to hear it! What's your feedback?

(We use this to keep improving!)
```

---

## HANDOFF METRICS TO TRACK

- Average wait time to agent
- First response time after transfer
- Customer satisfaction post-handoff
- Resolution rate
- Re-escalation rate
- Agent utilization

---

## SPECIAL SCENARIOS

### Angry/Frustrated Customer

```
I can tell you're frustrated, and I don't blame you. 😔

Let me get you to someone with authority to actually fix this.

I'm bypassing the normal queue and connecting you directly with {manager_name}.

They'll be with you in less than 2 minutes.

What they'll be able to do:
→ Full refund if needed
→ Rush project timeline
→ Add extra features
→ Whatever it takes to make this right

Hang tight...
```

### Technical Jargon Customer

```
I can tell you know your stuff! 🎯

Let me connect you with our lead developer who speaks your language.

They'll be able to discuss:
→ Technical architecture
→ API specifications
→ Security protocols
→ Scalability concerns

One moment...
```

### Budget-Conscious Customer

```
I hear you - budget matters!

Let me connect you with our solutions architect. They're amazing at finding creative ways to fit projects into budgets.

They've helped clients with:
→ Phased approaches
→ MVP first, scale later
→ Payment plans
→ Creative financing

Hold on...
```

---

**END OF FLOW 06**

## CRITICAL NOTES FOR IMPLEMENTATION:

1. **Always capture context** before transfer
2. **Set clear expectations** on wait times
3. **Provide ticket numbers** for tracking
4. **Follow up automatically** post-transfer
5. **Escalate complaints** immediately
6. **Track handoff metrics** for optimization
7. **Train agents** on using AI-provided context
8. **Have backup plan** if agents unavailable