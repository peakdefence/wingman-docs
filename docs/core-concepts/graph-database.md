# Understanding the Graph Database Model

WINGMAN leverages graph database technology to create and maintain **Live Security Context** - a dynamic, interconnected representation of your organization's security landscape. Unlike traditional security tools that store data in isolated silos, WINGMAN's graph database connects every security-relevant element, enabling both human security officers and AI agents to understand the full context of security decisions.

## Graph Database Fundamentals

### What is a Graph Database?

A graph database is a type of NoSQL database that uses graph structures for semantic queries with nodes, edges, and properties to represent and store data. Unlike traditional relational databases, graph databases are designed to treat relationships between data as first-class entities.

### Key Components

1. **Nodes**
   - Represent entities or objects (e.g., assets, people, controls)
   - Can have labels to categorize them (e.g., `:Asset`, `:Person`)
   - Contain properties as key-value pairs

2. **Relationships**
   - Connect nodes to each other
   - Are directional and named (e.g., `OWNS`, `MITIGATES`)
   - Can also have properties

3. **Properties**
   - Key-value pairs that store data about nodes and relationships
   - Can be of different data types (string, number, boolean, etc.)

## Why Graph Databases for Security Operations?

### The Traditional Problem: Disconnected Security Data

Most security tools store information in isolation:
- Vulnerability scanners maintain lists of vulnerabilities
- Asset management systems track individual assets
- Risk registers contain isolated risk entries
- Incident systems log individual events

This creates **information silos** where critical relationships remain invisible, making it difficult to:
- Understand how a vulnerability affects multiple business processes
- See which controls protect against related risks
- Track how security incidents connect to existing threats and vulnerabilities
- Prioritize security tasks based on their broader impact

### The WINGMAN Solution: Connected Security Intelligence

WINGMAN's graph database treats **relationships as first-class citizens**, storing not just security objects but the meaningful connections between them. This enables:

**Instant Relationship Traversal**: Finding connections happens in constant time, regardless of database size
**Rich Relationship Properties**: Connections themselves carry important metadata (e.g., "when was this control implemented?", "how effective is this mitigation?")
**Multi-hop Analysis**: Easily discover indirect relationships (e.g., "which business processes are affected by this vendor's security incident?")

## Core Benefits for Security Operations

### 1. **Contextual Security Decision Making**

**Traditional Approach**: 
- Receive vulnerability alert for Apache library
- Manually check which systems use Apache
- Separately verify business impact
- Create isolated task in project management tool

**WINGMAN Graph Approach**:
- Vulnerability node automatically connects to affected Asset nodes
- Asset nodes link to Business Process nodes they support
- Risk nodes show potential impact scenarios
- Control nodes indicate existing mitigations
- **Result**: Instant visibility of full business context and suggested prioritized actions

### 2. **AI-Enhanced Relationship Maintenance**

The graph structure enables AI to:

**Automatically Detect Missing Relationships**:
```
When new vulnerability is reported → AI suggests linking to:
├── Similar vulnerabilities in the same technology stack
├── Assets that use the affected component  
├── Existing controls that might mitigate the risk
└── Related incident history
```

**Proactive Relationship Updates**:
- When an asset is decommissioned, AI identifies all dependent relationships
- When a new control is implemented, AI suggests linking to relevant risks and assets
- When threat intelligence arrives, AI maps connections to existing vulnerabilities and assets

**Quality Assurance**:
- AI continuously validates relationship consistency
- Identifies orphaned nodes (e.g., risks without associated controls)
- Suggests relationship improvements based on security best practices

### 3. **Dynamic Impact Analysis**

Graph databases excel at answering complex questions like:

- "If this vendor experiences a security incident, which of our business processes are affected?"
- "Which controls need updating if we implement this new business process?"
- "What's the blast radius if this critical system fails?"
- "Which audit findings relate to our highest priority risks?"

### 4. **Intelligent Prioritization**

The interconnected nature allows WINGMAN to calculate **relationship-based priority scores** to propose them to the user. Example below:

```
High-Priority Vulnerability = Vulnerability that connects to:
├── Critical business assets
├── Multiple risk scenarios  
├── Limited existing controls
└── Recent threat intelligence
```

## WINGMAN's Graph Model

### Node Types

WINGMAN defines several node types to model security concepts:

- **Assets**: Things (*Asset*) of value that need protection
- **Controls**: Security measures to protect assets
- **Risks**: Potential threats to assets
- **Requirements**: Compliance and regulatory needs
- **Documents**: Policies, procedures, and evidence
- **People**: Users and their roles
- **Findings**: Results of audits and assessments

### Relationship Types

Relationships define how nodes are connected:

- **`OWNS`**: Indicates ownership (e.g., Person → Asset)
- **`MITIGATES`**: Shows risk reduction (e.g., Control → Risk)
- **`AFFECTS`**: Indicates impact (e.g., Risk → Asset)
- **`REQUIRES`**: Shows dependencies (e.g., Control → Requirement)
- **`EVIDENCES`**: Links evidence to controls or requirements
- **`RELATES_TO`**: General relationship between related items

However to keep things simple and understandable the relationship types are presented to the user through WINGMAN interface in a simplified manner, based on the types of nodes to be connected. This also allows us to keep true to the promise of Peak Defence method.

## Key Relationship Types in WINGMAN

### **Asset-to-Asset Relationships**
- **Dependency**: "System A depends on System B"
- **Ownership**: "Department X owns Asset Y"
- **Supply Chain**: "Vendor → Solution → Feature" hierarchies

### **Risk-to-Control Relationships**
- **Mitigation**: "Control C mitigates Risk R"
- **Monitoring**: "Control C monitors for Risk R indicators"
- **Treatment**: "Control C is part of Risk R treatment plan"

### **Incident-to-Vulnerability Relationships**
- **Exploitation**: "Incident I exploited Vulnerability V"
- **Discovery**: "Incident I revealed previously unknown Vulnerability V"
- **Pattern**: "Incident I follows same pattern as Vulnerability V"

### **Audit-to-Requirement Relationships**
- **Compliance**: "Audit Finding F relates to Requirement R"
- **Evidence**: "Evidence E supports compliance with Requirement R"
- **Gap**: "Finding F indicates non-compliance with Requirement R"

## Long-Term Benefits with AI Assistance

### **1. Self-Improving Security Posture**

As relationships mature in the system:
- **Pattern Recognition**: AI identifies recurring relationship patterns and suggests improvements
- **Predictive Insights**: Historical relationship data enables AI to predict potential security issues
- **Automated Workflows**: Common relationship patterns trigger automated security workflows

### **2. Organizational Security Intelligence**

Over time, the graph becomes a **living knowledge base** that:
- **Captures Institutional Knowledge**: Relationships preserve why certain security decisions were made
- **Enables Knowledge Transfer**: New team members quickly understand security context through relationship exploration
- **Supports Strategic Planning**: Historical relationship evolution informs future security architecture decisions

### **3. Proactive Security Management**

**Relationship-Driven Alerting**:
```
When: New threat intelligence arrives
AI Action: Automatically identifies related vulnerabilities and assets
Human Benefit: Receive contextual alerts only for relevant threats
```

**Dynamic Risk Assessment**:
```
When: Business process changes
AI Action: Updates all related risk calculations based on new relationships
Human Benefit: Real-time risk posture updates without manual reassessment
```

**Compliance Automation**:
```
When: Audit approaches
AI Action: Validates relationship completeness for compliance requirements
Human Benefit: Always audit-ready with minimal manual preparation
```

### **4. Reduced Administrative Overhead**

**Traditional Security Management**: 
- Manual cross-referencing between multiple tools
- Time-consuming impact analysis for changes
- Reactive approach to relationship maintenance

**WINGMAN Graph Management**:
- **AI-Suggested Relationships**: System proactively suggests new connections
- **Automated Consistency Checks**: Relationship validation happens continuously  
- **Context-Aware Workflows**: AI leverages relationships to streamline security processes

## Practical Example: Vulnerability Management Flow

### Traditional Approach
1. Receive CVE notification
2. Manually check asset inventory  
3. Search through multiple systems for affected components
4. Separately assess business impact
5. Create disconnected remediation tasks
6. Track progress in isolation

### WINGMAN Graph Approach
1. **CVE arrives** → AI automatically creates Vulnerability report node and triggers relevant processing flow
2. **Relationship Discovery** → AI identifies connected Asset nodes whenever a new asset is added
3. **Impact Analysis** → Graph traversal reveals affected Assets of type "Business Process" nodes
4. **Control Assessment** → Related Control nodes show existing mitigations for Risk and Asset
5. **Risk Context** → Connected Risk nodes provide prioritization context
6. **Automated Task Creation** → AI generates prioritized remediation tasks with full context
7. **Relationship Updates** → Progress automatically updates all related nodes

- [Learn about Node Types](./node-types.md)
- [Understand Node Relationships](./relationships.md)
- [Explore WINGMAN's Data Model](../core-concepts/data-model.md)

## Conclusion

WINGMAN's graph database approach transforms security management from a collection of disconnected activities into a **unified, intelligent security operation**. By maintaining rich relationships between security elements and leveraging AI to keep these relationships current and meaningful, organizations achieve:

- **Faster Decision Making**: Complete context available instantly
- **Better Prioritization**: Relationship-based risk and impact assessment
- **Reduced Manual Work**: AI maintains relationships and suggests improvements
- **Improved Security Outcomes**: Proactive, context-aware security management

The investment in building and maintaining these relationships pays dividends over time, as the graph becomes increasingly intelligent and capable of supporting sophisticated security operations with minimal human overhead.