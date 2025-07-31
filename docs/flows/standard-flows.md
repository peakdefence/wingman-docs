# Standard Flows

This document outlines the standard, pre-built flows available in WINGMAN for common security operations.

## Incident Response Flows

### 1. High Severity Alert Triage

**Trigger**: New high or critical severity alert

**Actions**:
1. Create incident ticket
2. Notify on-call team
3. Gather context (asset details, related alerts)
4. Run initial triage playbook
5. Update status and assign owner

### 2. Phishing Email Response

**Trigger**: Phishing email reported

**Actions**:
1. Analyze email headers and content
2. Check indicators of compromise (IOCs)
3. Block malicious domains/URLs
4. Scan affected systems
5. Notify affected users
6. Update security controls

## Vulnerability Management Flows

### 1. New Vulnerability Workflow

**Trigger**: New vulnerability detected

**Actions**:
1. Enrich with threat intelligence
2. Identify affected assets
3. Calculate risk score
4. Assign to owner
5. Create remediation ticket
6. Notify stakeholders

### 2. Patch Management

**Trigger**: Patch Tuesday or scheduled

**Actions**:
1. Check for new patches
2. Identify affected systems
3. Test patches in non-production
4. Schedule deployment
5. Verify installation
6. Update documentation

## Compliance Flows

### 1. Control Verification

**Trigger**: Scheduled (weekly/monthly)

**Actions**:
1. Check control status
2. Collect evidence
3. Document exceptions
4. Generate compliance report
5. Notify compliance team

### 2. Audit Preparation

**Trigger**: Audit scheduled

**Actions**:
1. Inventory required evidence
2. Verify control effectiveness
3. Document gaps
4. Generate pre-audit report
5. Schedule remediation

## Identity and Access Management Flows

### 1. User Onboarding

**Trigger**: New hire in HR system

**Actions**:
1. Create user account
2. Assign role-based access
3. Request manager approval
4. Provision access
5. Notify user

### 2. Access Review

**Trigger**: Scheduled (quarterly)

**Actions**:
1. List users and access
2. Send review requests
3. Track responses
4. Revoke unused access
5. Document results

## Threat Intelligence Flows

### 1. IOC Processing

**Trigger**: New IOCs received

**Actions**:
1. Validate IOCs
2. Check internal systems
3. Block/contain threats
4. Update security controls
5. Generate report

### 2. Threat Hunting

**Trigger**: Scheduled or on-demand

**Actions**:
1. Define hypothesis
2. Query logs and endpoints
3. Analyze results
4. Document findings
5. Update detection rules

## Customizing Standard Flows

### Enabling/Disabling Flows

1. Navigate to **Flows** > **Standard Flows**
2. Toggle the switch to enable/disable
3. Configure flow parameters
4. Save changes

### Modifying Flows

1. Open the flow in the editor
2. Make changes to triggers or actions
3. Test the modified flow
4. Deploy to production

## Best Practices

1. **Documentation**
   - Document flow purpose and configuration
   - Maintain change log
   - Include troubleshooting steps

2. **Testing**
   - Test in non-production first
   - Verify all actions complete successfully
   - Check error handling

3. **Monitoring**
   - Monitor flow execution
   - Set up alerts for failures
   - Review logs regularly

## Next Steps

- [Understanding Flows](understanding-flows.md)
- [Creating Custom Flows](custom-flows.md)
- [Flow Execution](execution.md)
