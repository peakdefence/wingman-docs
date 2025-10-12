# Understanding Flows

This guide introduces the concept of flows in WINGMAN and how they can be used to automate security processes.

## What are Flows?

Flows are automated workflows that connect different parts of the WINGMAN platform to streamline security operations. They allow you to define a series of steps that execute automatically based on triggers or schedules.

## Available automations

| Automation description | Automation implementation method | Available through frontend | Available through backend |
| --- | --- | --- | --- |
| Work with Risk registry | Interface to work with relevant node | Yes | No |
| Work with Asset registry | Interface to work with relevant node | Yes | No |
| Work with Incident registry | Interface to work with relevant node | Yes | No |
| Work with Vulnerability registry | Interface to work with relevant node | Yes | No |
| Work with information security relevant tasks | Interface to work with relevant node | Yes | No |
| Generation of company context to be used in WINGMAN | Prompted chat with web search | No | Yes |
| Vulnerability processing flow to automate processing of vulnerabilities received from different sources or entered manually, includes linking vulnerabilities to assets, de-duplication of vulnerabilities, prioritization of work | Flow | Yes* | No |
| Document generation from templates within company context | BO implementation function | No | Yes |
| Obtaining information from documentation through natural language interface| Chat | Yes | No |
| Risk reviews - regular and initial. Improves risk description, finds missing controls, finds missing assets, finds missing vulnerabilities | Time/Manually triggered Flow | Yes* | No |
| Regular asset reviews - provides information collection about the asset and guides user as to how to review the asset | Time/Manually triggered flow | No | Yes |
| Regular access reviews - provides information collection about the access and guides user as to how to review the access | Time/Manually triggered flow | No | Yes |
| Vendor/Supplier initial and regular reviews. Finds information about supplier and creates a review summary for a person to look into | Time/Manually triggered flow | No | Yes |
| Incident processing workflow including incident classification to determine reporting needs and similar issues | Prompted chat | No | No |
| Populating controls list from requirements | BO implementation function | No | Yes |
| Adding regulatory and standard requirements | BO implementation function | No | Yes |
| Automated stage 1 audit (auditing documentation for compliance with selected requirements) | BO implementation function | No | Yes |
| Automated stage 2 audit (auditing interviews and notes )| BO implementation function | No | No |



## Key Concepts

### 1. Triggers

Events that start a flow:
- New <node> detected
- <node> status change
- Scheduled time
- Manual execution
- External webhook

### 2. Actions

Operations performed by the flow:
- Send notifications
- Create tickets
- Run scans
- Update records
- Execute scripts

### 3. Conditions

Logic that controls flow execution:
- If/Then/Else statements
- Data validation
- Rate limiting
- Error handling

## Flow Components

### 1. Inputs

Data that flows into the workflow:
- Event data
- User input
- API responses
- File uploads

### 2. Processing

Transformations and logic:
- Data enrichment
- Format conversion
- Calculations
- Decision points

### 3. Outputs

Results of the flow:
- Updated records
- Generated reports
- Sent notifications
- Created tickets

## Common Use Cases

### 1. Incident Response

1. Trigger: New high-severity alert
2. Actions:
   - Create incident ticket
   - Notify on-call team
   - Gather context
   - Run initial triage

### 2. Vulnerability Management

1. Trigger: New vulnerability scan results
2. Actions:
   - Triage vulnerabilities
   - Assign owners
   - Track remediation
   - Generate reports

### 3. Compliance Monitoring

1. Trigger: Scheduled check
2. Actions:
   - Verify controls
   - Document evidence
   - Generate compliance report
   - Notify stakeholders

## Best Practices

1. **Design**
   - Keep flows simple and focused
   - Document flow purpose and logic
   - Handle errors gracefully

2. **Implementation**
   - Test thoroughly before production
   - Monitor flow execution
   - Log important events

3. **Maintenance**
   - Review and update regularly
   - Archive unused flows
   - Document changes

## Next Steps

