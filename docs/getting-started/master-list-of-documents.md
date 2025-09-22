## The Documentation Reality Check

### The Minimal Viable Documentation Matrix

Before you dive in, here's what you actually need versus what expensive consultants in suits tell you. This matrix shows the cruel reality of compliance requirements across different frameworks. Buckle up, buttercup.



**Legend:**
- **Mandatory**: Required explicitly by the framework/regulation
- **Optional**: Not explicitly required but strongly recommended (aka mandatory if auditor is grumpy)
- **Not Required**: Framework doesn't care (but your lawyer might)

| Document Type | ISO 27001:2022 | SOC 2 Type II | NIS2 | GDPR | Description & Reality Check |
| --- | --- | --- | --- | --- | --- |
| **POLICIES** |
| Information Security Policy | **Mandatory** | **Mandatory** | **Mandatory** | **Implied** | The granddaddy of all policies. Must exist, must be comprehensive, probably gets read once a year during audits. |
| Risk Management Policy | **Mandatory** (principles can be within Information Security Policy) | **Mandatory** (principles can be within Information Security Policy) | **Mandatory** | Optional (scope is on risks affecting data subjects) | How you pretend to quantify the unquantifiable. ISO wants methodology, SOC 2 wants consistency, DORA wants you to cry. |
| Access Control Policy | **Mandatory** (principles can be within Information Security Policy)| **Mandatory** (principles can be within Information Security Policy)| **Mandatory** | **Mandatory** | Who gets the keys to the kingdom. Everyone agrees: document it or face doom. |
| Data Protection/Privacy Policy | Optional* | Optional* | Optional* | **Mandatory** | Optional* | *Optional until you handle personal data, then it's as mandatory as breathing. GDPR's favourite child. |
| Incident Response Policy | **IMPLIED** (principles can be within Information Security Policy, procedure is KEY) | **IMPLIED** (principles can be within Information Security Policy)| **Mandatory** | **Mandatory** | What to do when things go pear-shaped. NIS2 wants 24-hour reporting, GDPR wants 72 hours. Pick your panic speed. |
| Business Continuity Policy | **Mandatory** | Optional | **Mandatory** | Optional | How to keep the lights on during apocalypse. NIS 2 particularly enjoys this one for planning. |
| Asset Management Policy | **IMPLIED** (principles can be within Information Security Policy, procedure is KEY) | Optional | **IMPLIED** (principles can be within Information Security Policy, procedure is KEY) | Optional | Knowing what you have so you can protect it. Revolutionary concept, apparently. |
| Supplier Management Policy | **IMPLIED** (principles can be within Information Security Policy, procedure is KEY) | **IMPLIED** (principles can be within Information Security Policy, procedure is KEY) | **Mandatory** | **IMPLIED** in the context of knowing where you data subjects personal data is processed | Because your security is only as good as your weakest vendor (spoiler: it's always Dave from IT support). |
| **PROCEDURES** |
| Risk Assessment Procedure | **Mandatory** | **Mandatory** | **Mandatory** | Optional | The actual "how-to" of risk management. Must be detailed enough to follow, vague enough to adapt. |
| Incident Response Procedure | **Mandatory** | **Mandatory** | **Mandatory** | **Mandatory** | Step-by-step panic guide. Include escalation paths that people will ignore in actual incidents. |
| Access Control Procedure | **Mandatory** | **Mandatory** | Optional | **Mandatory** | How to actually implement access control without making everyone hate IT. |
| Change Management Procedure | **Mandatory** | **Mandatory** | Optional | Optional | How to change things without breaking everything. DORA loves this for "digital operational resilience." |
| Backup & Recovery Procedure | **Mandatory** | Optional | **Mandatory** | Optional | How to restore everything when ransomware inevitably strikes. |
| Vulnerability Management Procedure | **Mandatory** | **Mandatory** | **Mandatory** | Optional | Finding holes before the bad guys do. NIS2 is particularly keen on this one. |
| **GUIDELINES & RECORDS** |
| Acceptable Use Guidelines | Optional | Optional | Optional | Optional | What employees can and can't do. Optional but saves HR headaches. |
| Security Awareness Training Records | **Mandatory** | **Mandatory** | **Mandatory** | **Mandatory** | Proof that you tried to educate users (before they clicked that phishing link anyway). |
| Risk Register | **Mandatory** | **Mandatory** | **Mandatory** | **Mandatory** | Your catalogue of doom. Must be "living document" (aka constantly out of date). |
| Asset Inventory | **Mandatory** | Optional | **Mandatory** | Optional | List of everything you own and forgot about. |
| Processing Activities Records | Optional | Optional | Optional | **Mandatory** | Optional | GDPR Article 30's gift to spreadsheet enthusiasts. |
| Audit Logs | **Mandatory** | **Mandatory** | **Mandatory** | **Mandatory** | Evidence that things happened. Everyone wants these, nobody agrees on retention periods. |
| ISMS Scope | **Mandatory** | **Mandatory** | **IMPLIED** | Optional | This is where you define what is needed. |
| Statement of Applicability | **Mandatory** | Not Required | Not Required | Not Required | ISO's special requirement. 93 controls and why you're ignoring half of them. |

**Legend:**

- **Mandatory**: Required explicitly by the framework/regulation
- **Optional**: Not explicitly required but strongly recommended (aka mandatory if auditor is grumpy)
- **Not Required**: Framework doesn't care (but your lawyer might)
