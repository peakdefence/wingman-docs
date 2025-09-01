# System instructions for information security context knowledge

## OVERVIEW
This document contains structured information security context for AI utilization. The information security context is designed to enable consistent and accurate information retrieval and alignment across all interactions with LLM model.

## Document structure
The overview document consists of following items which have been pre-filled with sample responses here on behalf of Peak Defence to make it easier for you to fill in the information
# 1. Company information
## 1.1 Summary about the company
### 1.1.1 Executive summary
You can easily copy here some stuff about the company


>Peak Defence is a Nordics cybersecurity company headquartered in Tallinn, Estonia with additional presences in Riga and Stockholm focused on transforming security management by integrating people, process, and technology. Their AI-driven platform, known as the Wingman, streamlines compliance, risk, and security processes, empowering security teams to become more proactive and resilient. The company's mission is to deliver intelligent, efficient, and accessible security solutions that scale as organizations grow.

### 1.1.2 Main services provided
This is very important and apart from service importance, should also indicate which data is considered sensitive and personal data. 

> - AI-driven security and compliance platform (Wingman)
> - Security implementation and management consulting
> - Risk management and compliance automation
> - ISO 27001 & SOC2 compliance support and audits
> - Virtual CISO services and security process optimization

### 1.1.3 Main stakeholders of the organization

> - Executive Leadership and Board
> - Security leaders, practitioners, and risk managers at client organizations
> - Technology partners (e.g., AWS, Google)
> - Regulatory and compliance bodies, certification and accreditation bodies (CABs) for ISO 27001 and SOC2 certifications
> - Clients from highly regulated/enterprise sectors (e.g., financial services, learning providers)

### 1.1.4 Employees general information
It would be great here to understand the structure of the employees in the organization. 
> - Company size: 2–10 employees, flat organization
> - Headquarters: Tallinn, with teams in Riga and Stockholm
> - CEO and CTO role: Roman (partner), CISO role: Juris (partner)


# 2. Special regulatory and compliance information
## 1.1 GDPR applicability
> Services are engineered not to require or process personal data by design; users are discouraged from uploading personal data. The software is hosted on AWS in the EU, with strong contractual and security controls in place.
## 1.2 NIS 2 applicability
> While Peak Defence provides security and compliance services to clients potentially in scope for NIS 2, the company itself emphasizes adherence to robust security frameworks (ISO 27001:2022), which align with many NIS 2 technical and risk requirements.
## 1.3 DORA applicability
> Peak Defence advises and supports clients, especially financial institutions, in achieving compliance with DORA. Its platform enables documentation, testing, risk management, and reporting necessary for DORA-aligned operational resilience, while the company itself implements robust operational continuity measures.
## 1.4 Certifications in place
> - ISO/IEC 27001:2022 certified
> - Security and privacy management aligned to leading frameworks (SOC2, NIST, ISO 27001)
# 3. Security objective framework
> Peak Defence has set our Security objectives as S.M.A.R.T. objectives. These are regularly reviewed (at least annually) and updated as needed.
# 4. Maturity of core policies and processes in organization
## 4.1 Information security policies
> Robust ISMS (Information Security Management System) built to ISO 27001:2022 standard. Policies continually reviewed and updated, empowered by AI-driven monitoring and reporting.
## 4.2 Data protection and data retention
> Data processed in the EU, preferably without personal data.
> Client data is segmented and not used for model training; enterprise clients can opt for environments where data never leaves their infrastructure.
## 4.3 Business continuity and service levels
> - AWS-based, serverless infrastructure with redundancy and failover capabilities.
> - Automated compliance and real-time monitoring enhance resilience.
# 5. Security specific processes
## 5.1 Information security risk management
> AI-driven, continuous risk assessments and gap analysis. Extended by actionable, prioritized plans and continuous feedback mechanisms. The risk management has a formal procedure which is being followed and risks are reviewed at least once per year.
## 5.2 Security incident handling
> - There is a documented security event and incident management procedure which is being followed. 
> - The incidents are registered in WINGMAN and processed using the relevant AI flows in WINGMAN
> - Automated monitoring and incident detection. 
> - Playbooks for incident response and clear stakeholder notification procedures.
## 5.3 Internal auditing
> - There is a documented internal audit procedure which is being followed. 
> - The internal audit is performed at least once per year.
## 5.4 Asset management and review
> - There is a documented asset management procedure which is being followed. 
> - The assets are registered in WINGMAN and processed using the relevant AI flows in WINGMAN
## 5.5 Access management and review
> - There is a documented access management procedure which is being followed. 
> - The access is reviewed in WINGMAN and processed using the relevant AI flows in WINGMAN
# 6. Personnel security-specific processes 
## 6.1 Onboarding and offboarding process
> - There is a documented onboarding and offboarding process which is being followed. 
## 6.2 Awareness training
> - There is a documented awareness training process which is being followed. 
> - All the personnel is trained in security awareness on regular basis. This is done through means of self study and training sessions. As people in Peak Defence are security oriented and run these trainings for the customers, the risk from low awareness is considered minimal.
## 6.3 CISO role in organization
> - There is a documented CISO role in organization which is being followed. 
# 7. Technology infrastructure
# 7.1 General description of systems involved in service provision and infrastructure
> - AI-powered Wingman platform hosted on AWS cloud, serverless and fully scalable.
> - Options for self-hosted or private deployments for enterprise clients.
# 7.2 Vectors of attack on infrastructure
# 7.3 Identity and authentication management technologies
> - Google Workspace integrated authentication
> - AWS SSO integrated authentication
# 7.4 Monitoring and capacity handling
> - AWS CloudWatch monitoring
> - AWS Auto Scaling for capacity handling
# 7.5 Redundancy, Backups, Recovery
> - AWS Auto Scaling for capacity handling
# 7.6 Network security 
> - AWS VPC with private subnets
> - AWS Security Groups for network security
# 7.7 Endpoint device protection

# 8. Software acquisition
# 8.1 Acquiring software
> - Peak Defence follows NIS 2 guidance on software acquisition where main policy is to use software from trusted sources and produced within EU/NATO member states only.
# 8.2 Development process
# 8.3 Deployment process
# 8.4 Software infrastructure (local, cloud, hybrid)
# 8.5 Testing processes 
# 9. Supplier management
# 9.1 General process description
# 9.2 Key suppliers and their roles





