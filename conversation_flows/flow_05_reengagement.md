# FLOW 05: RE-ENGAGEMENT & FOLLOW-UP
## The "Still Interested?" Recovery Flow

**Flow Name:** Re-Engagement & Recovery  
**Flow ID:** `re_engagement_flow`  
**Trigger:** Automated - 24 hours after incomplete main flow OR keyword "back", "still interested", "following up"  
**Priority:** MEDIUM (7)  
**Active:** Yes  

---

## SCENARIO 1: Incomplete Lead Capture (Drop-off Recovery)

**Trigger:** User started main flow but didn't complete  
**Wait Time:** 24 hours after last message  

**Message:**
```
Hey {customer_name}! 👋

It's Tessa from Instel Technologies.

I noticed we were chatting yesterday about the FREE AI chatbot, but we didn't finish getting you set up.

Everything okay?

Quick check:
A) Yes, still interested - let's finish!
B) Need more info first
C) Not the right time anymore
D) I already signed up somehow
```

**Branching:**

**IF A (Still interested):**
```
Awesome! Let's get you locked in. 🔒

Quick reminder of where we left off:

You were getting:
✅ FREE AI WhatsApp Chatbot
✅ Custom training on your business  
✅ 24/7 lead capture
✅ 30-day support
✅ $1,700 value for $0

Only {X} spots left now (was 7 yesterday, filling fast!)

Let me grab the info we still need...

{Resume from where they dropped off}
```
→ Return to exact step in main flow

**IF B (Need more info):**
```
No problem! What do you want to know?

Common questions:
1️⃣ Is it really free? (YES, zero cost)
2️⃣ What's the catch? (None - limited spots only)
3️⃣ Will it work for my business? (Yep, we customize it)
4️⃣ How long does setup take? (48-72 hours)
5️⃣ Something else?

What's on your mind?
```
→ Answer questions, then push to complete

**IF C (Not right time):**
```
Totally understand! 

Life gets busy. But quick question - is it timing, or is there something about the offer that's not quite right?

A) Just bad timing (but love the idea)
B) Not sure it's right for my business
C) Budget concerns (even though it's free?)
D) Other reason
```

→ Address concern, offer to hold spot for 48 hours

**IF D (Already signed up):**
```
Oh! Let me check... 🔍

Hmm, I don't see your completion in the system.

Can you tell me:
→ Who you spoke with?
→ When you completed it?
→ What email you used?

I want to make sure you're taken care of!

(If you DIDN'T complete it yet, let's finish now - takes 2 min!)
```

---

## SCENARIO 2: Warm Lead Follow-up

**Trigger:** 48 hours after "just browsing" or "need to think"  
**Automated send at 10am their local time**

**Message:**
```
Hi again! Tessa here from Instel 👋

Quick update: Only {X} FREE chatbot spots left for this month.

I remembered you were interested but wanted to think about it.

Any new thoughts? Or questions I can answer?

Also - we just set up a chatbot for a {similar_business_type} business and they got 12 leads in the first 24 hours! 🚀

Want to hop on this before spots are gone?
```

**Wait for response...**

**IF Interested:**
```
Perfect timing! Let's get you locked in.

Since we talked before, I'll make this SUPER quick.

Just need:
1️⃣ Your name
2️⃣ Phone number  
3️⃣ Email
4️⃣ Business type

Ready? Let's start with your name...
```

**IF Still hesitating:**
```
I hear you! Let me try something different...

What if I told you that EVERY DAY you wait, you're losing an average of 3-5 leads?

At just $100 per customer, that's $300-$500 lost DAILY.

Over a week? $2,100-$3,500 gone. 💸

The chatbot is FREE. The cost of waiting isn't.

Can I at least get you on a 10-minute call with our team to show you exactly how this works for {business_type} businesses?

No obligation. Just info.

Yes or no?
```

**IF No response after 24 hours:** → Send SCENARIO 3

---

## SCENARIO 3: Final Outreach (72-96 hours)

**Message:**
```
{customer_name}, last message! (Promise! 😅)

I don't want to be annoying, but I also don't want you to miss out.

Here's the reality:
→ We're down to the LAST 2 spots this month
→ Next month's spots book up in advance
→ You'd be looking at a 4-6 week wait

Plus, I just saw that your competitor {competitor_name} got one of our chatbots last week. 👀

Just saying...

If you want the spot, reply "CLAIM" in the next 24 hours.

If not, no worries! I'll stop bothering you 😊

Either way, good luck with your business! 🙌
```

**IF "CLAIM":**
```
BOOM! Smart decision! 🎯

Alright, moving FAST because spots are almost gone.

Rapid-fire questions:

1️⃣ Name?
2️⃣ Phone?
3️⃣ Email?
4️⃣ Business type?

Go!
```

**IF "STOP" or "No thanks":**
```
No problem at all! I respect that.

I'll remove you from follow-ups.

If you change your mind later, just message "INTERESTED" and we'll see if spots are available.

Best of luck with everything! 🙌
```

→ Tag as "Cold - Do Not Contact" (for 90 days)  
→ Add to passive newsletter only

**IF No response:** → Tag as "Cold Lead - No Response" and move to long-term nurture

---

## SCENARIO 4: Return After Long Absence

**Trigger:** User messages after 7+ days of silence  
**Keywords:** Any message after 7 days

**Message:**
```
Welcome back! 👋

I remember you! We were talking about {what_they_inquired_about}.

Quick update since we last talked:

{Dynamic based on what's changed:}
→ FREE chatbot spots: Only {X} left
→ New portfolio piece: {if relevant}
→ Special offer: {if any}

Are you ready to move forward, or did you have more questions?
```

---

## SCENARIO 5: "Not Interested" Recovery

**Trigger:** User said "not interested", "no thanks", etc.  
**Wait:** 30 days  
**Send ONCE only**

**Message:**
```
Hey! Tessa here. 

I know you weren't interested last month, so I won't push.

But I wanted to share something cool:

We just launched {new_feature/case_study/offer} that's getting crazy results for {business_type} businesses.

Example: {specific success story}

Thought you might want to know in case your situation changed.

If you're curious, just say "TELL ME MORE"

If not, I promise I won't bother you again! 😊
```

---

## SCENARIO 6: Objection-Specific Follow-up

**For "Too Expensive" objections:**
**Wait:** 48 hours

```
Hey {customer_name}!

Been thinking about our conversation...

You mentioned pricing was a concern.

Two things:

1️⃣ The FREE chatbot is STILL free. Zero cost. That's not changing.

2️⃣ For other services, we actually have financing options I didn't mention:
   → Payment plans (3-12 months)
   → Phase the project (build in stages)
   → Start small, scale up

Worth a 10-min call to explore?

Or at least grab the free chatbot while you're figuring out the rest?
```

**For "Need to Check with Partner/Boss" objections:**
**Wait:** 24-48 hours

```
Hi {customer_name}!

Did you get a chance to talk to {partner/boss/team}?

If it helps, I can send you:
→ One-page summary (easy to forward)
→ Case studies from similar businesses
→ ROI calculator
→ Answers to common questions they'll ask

What would make it easier to get buy-in?
```

**For "Not the Right Time" objections:**
**Wait:** 14 days

```
Hey {customer_name}!

It's been two weeks since we talked.

You mentioned it wasn't the right time then.

Is now any better?

Even if you're not ready for the full solution, the FREE chatbot could start helping immediately while you plan the bigger stuff.

Worth checking in?
```

---

## SCENARIO 7: Success Story Nurture

**For leads in nurture:** Send every 14 days with real success stories

**Template:**
```
Hey! Tessa here with a quick win story 🎉

Just set up a chatbot for {business_name} (a {business_type} in {location}).

Results in the first week:
→ {X} leads captured
→ {Y} appointments booked  
→ ${Z} in sales generated
→ All while the owner was on vacation! 😎

This is what I keep trying to tell you - these things WORK!

Still got {X} FREE spots left this month if you're ready.

No pressure though! Just wanted to share the success 😊
```

---

## SCENARIO 8: "Show Me Proof" Response

**When leads ask for case studies, proof, etc.**

```
Love that you want proof! Smart decision-making. 🎯

Here's what I can show you:

1️⃣ LIVE DEMO
   → Use our actual chatbot
   → See how it works in real-time
   → Try to stump it!

2️⃣ CASE STUDIES
   → {business_type} results
   → Before/after metrics
   → Client testimonials

3️⃣ PORTFOLIO
   → Website examples
   → App demos
   → Automation workflows

4️⃣ STRATEGY CALL
   → Talk to actual humans who built these
   → Get answers to tough questions
   → See if it's a fit

Which sounds most useful?
```

---

## RE-ENGAGEMENT METRICS TO TRACK

Track these for optimization:
- Response rate by scenario
- Time-to-response correlation
- Most effective messages
- Conversion rate by objection type
- Optimal follow-up timing
- Message that triggered block/unsubscribe

---

## STOP CONDITIONS

**User must say these EXACT words to stop follow-ups:**
- "Stop"
- "Unsubscribe"
- "Remove me"
- "Don't contact me"
- "Leave me alone"

**When triggered:**
```
Understood! I've removed you from all follow-ups.

You won't hear from me again unless you message first.

If you ever want back in, just say "INTERESTED"

Take care! 🙌
```

**Action:** Tag as "Do Not Contact" + remove from all sequences

---

## REACTIVATION TRIGGER

**If "Do Not Contact" user messages anything:**

```
Welcome back! 👋

I see you're reaching out again. 

I've removed the "no contact" flag.

How can I help you today?
```

→ Treat as fresh lead, reference past conversation minimally

---

**END OF FLOW 05**