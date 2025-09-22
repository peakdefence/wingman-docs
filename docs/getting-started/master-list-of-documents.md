## The Documentation Reality Check

### The Minimal Viable Documentation Matrix

Before you dive in, here's what you actually need versus what expensive consultants in suits tell you. This matrix shows the cruel reality of compliance requirements across different frameworks. Buckle up, buttercup.



**Legend:**

- **Mandatory**: Required explicitly by the framework/regulation
- **Optional**: Not explicitly required but strongly recommended (aka mandatory if auditor is grumpy)
- **Not Required**: Framework doesn't care (but your lawyer might)

About the **Policy level requirements**: 

- 

Here's your document matrix table with the supplier acquisition row added, complete with regulatory references and the brutal reality of vendor management:

| Document Type | ISO 27001:2022 | NIS2 | GDPR | Description & Reality Check |
| --- | --- | --- | --- | --- |
| **POLICIES** |
| Information Security Policy | **Mandatory** - Clause 5.2 | **Mandatory** - Art. 21(1) cybersecurity risk management | **Implied** - Art. 32 security measures | The granddaddy of all policies. Must exist, must be comprehensive, probably gets read once a year during audits. Pro tip: split into general and technical usage policies so people actually read the bits that apply to them. |
| Risk Management Policy (can be part of Information Security Policy) | **Mandatory** - Clause 6.1.1 | **Mandatory** - Art. 21(1)(a) risk identification | **Mandatory** - Art. 35 DPIA requirements | How you pretend to quantify the unquantifiable. ISO wants methodology, NIS2 wants cyber resilience, GDPR wants you to think about data subjects for once. |
| Access Control Policy (can be part of Information Security Policy)| **Mandatory** - Clause A.9 | **Mandatory** - Art. 21(2)(d) access control | **Mandatory** - Art. 32(1)(b) pseudonymization | Who gets the keys to the kingdom. Everyone agrees: document it or face regulatory doom. |
| Data Protection/Privacy Policy | Optional* - *unless A.18 applies | Optional* - *unless processing personal data | **Mandatory** - Art. 13-14, 12 | *Optional until you handle personal data, then it's as mandatory as breathing. GDPR's favourite child and your legal team's nightmare. |
| Incident Response Policy (can be part of Information Security Policy)| **Implied** - A.16 (procedure is KEY) | **Implied** - Art. 23 incident reporting (procedure is KEY) | **Mandatory** - Art. 33-34 breach notification | What to do when things go pear-shaped. Must include escalation paths that people will definitely ignore during actual incidents. |
| Business Continuity Policy (can be part of Information Security Policy)| **Mandatory** - A.17 | Optional (but Art. 21 resilience helps) | **Mandatory** - Art. 32(1)(c) resilience | How to keep the lights on during apocalypse. NIS2 cares about essential services; GDPR just wants data to survive. |
| Asset Management Policy (can be part of Information Security Policy)| **Implied** - A.8 (procedure is KEY) | **Implied** - Art. 21(1)(b) asset identification (procedure is KEY)| **Mandatory** - Art. 30 knowing what you process | Knowing what you have so you can protect it. Revolutionary concept that somehow eludes most organizations. |
| Supplier Management Policy (can be part of Information Security Policy)| **Implied** - A.15 (procedure is KEY) | **Implied** - Art. 21(2)(h) supply chain | **IMPLIED** - Art. 28 processor agreements | Because your security is only as good as your weakest vendor (spoiler: it's always that one SaaS tool someone signed up for with their personal credit card). |
| **PROCEDURES** |
| Risk Assessment Procedure | **Mandatory** - Clause 6.1.2, A.18.1.4 | **Mandatory** - Art. 21(1) methodology | **Mandatory** - Art. 35 DPIA process | The actual "how-to" of risk management. Must be detailed enough to follow, vague enough to adapt to whatever fresh hell emerges next quarter. |
| Incident Response Procedure | **Mandatory** - A.16.1 | **Mandatory** - Art. 23(1) 24hr reporting | **Mandatory** - Art. 33(1) 72hr notification | Step-by-step panic guide. Include contact details that will be outdated by the time you need them. |
| Access Control Procedure | **Mandatory** - A.9.1, A.9.2 | **Mandatory** - Art. 21(2)(d) | Optional (but Art. 32 helps) | How to actually implement access control without making everyone hate IT more than they already do. |
| Change Management Procedure | **Mandatory** - A.12.1.2, A.14.2.2 | **Mandatory** - Art. 21(2)(f) configuration | Optional (but Art. 25 design helps) | How to change things without breaking everything. Spoiler: you'll break something anyway. |
| Backup & Recovery Procedure | **Mandatory** - A.12.3, A.17.1 | Optional (but Art. 21 resilience) | Implied via Art. 32(1)(c) | How to restore everything when ransomware inevitably strikes. Test your backups or cry later. |
| Vulnerability Management Procedure | **Mandatory** - A.12.6.1 | **Mandatory** - Art. 21(2)(c) patching | Implied via Art. 32(1) | Finding holes before the bad guys do. NIS2 particularly enjoys this one - they want you to patch things faster than vendors can break them. |
| **Software Acquisition & Supplier Evaluation Procedure** | **Mandatory** - A.15.1.1, A.15.1.2, A.15.1.3 | **Mandatory** - Art. 21(2)(h) supply chain security | **Mandatory** - Art. 28 processor due diligence | The art of vetting suppliers without actually reading their 47-page security questionnaires. Requires documenting why "they have good Google reviews" isn't adequate due diligence, despite what procurement insists. |
| **GUIDELINES & RECORDS** |
| Acceptable Use Guidelines | Optional - A.7.2.2 if you want | Optional | Optional | What employees can and can't do. Optional but saves HR from explaining why blockchain mining isn't an acceptable use of company resources. |
| Security Awareness Training Records | **Mandatory** - A.7.2.2 | **Mandatory** - Art. 21(2)(e) training | Optional (but good luck explaining incident without it) | Proof that you tried to educate users before they clicked that obviously fake "You've won a lottery" email. |
| Risk Register | **Mandatory** - Clause 6.1.2 | **Mandatory** - Art. 21(1) documentation | **Mandatory** - Art. 35 for high-risk processing | Your catalogue of organizational doom. Must be "living document" (translation: constantly outdated and ignored). |
| Asset Inventory | **Mandatory** - A.8.1.1 | **Mandatory** - Art. 21(1)(b) | **Mandatory** - Art. 30(1)(d) categories | List of everything you own, lease, forgot about, and probably shouldn't have bought in the first place. |
| Processing Activities Records | Optional unless A.18 applies | Optional | **Mandatory** - Art. 30 | GDPR Article 30's love letter to spreadsheet enthusiasts. Main thing: know where your data goes to die. |
| Audit Logs | **Mandatory** - A.12.4.1 | **Mandatory** - Art. 21(2)(g) monitoring | **Mandatory** - Art. 32(1)(d) monitoring | Evidence that things happened. Everyone wants these, nobody agrees on retention periods, and they're always too big to actually analyze. |
| ISMS Scope | **Mandatory** - Clause 4.3 | **Mandatory** - Art. 2 scope definition | Optional (implied: all personal data) | Where you define what you're pretending to secure. Choose wisely - this determines how much you'll hate your life during audits. |
| Statement of Applicability | **Mandatory** - Clause 6.1.3(d) | Not Required | Not Required | ISO's special snowflake requirement. 93 controls and creative explanations for why you're ignoring the expensive ones. |

*The supplier evaluation row is where compliance dreams go to die. We spend more time researching which coffee machine to buy than vetting the vendors who'll have admin access to our crown jewels. But hey, at least now we have three different frameworks telling us to actually do our homework before handing over the keys to digital kingdom.*

**Legend:**

- **Mandatory**: Required explicitly by the framework/regulation
- **Optional**: Not explicitly required but strongly recommended (aka mandatory if auditor is grumpy)
- **Not Required**: Framework doesn't care (but your lawyer might)
