# MCP Connector

## Overview

The MCP (Model Context Protocol) connector is a core integration feature that makes WINGMAN's "Live Security Context" accessible through any MCP-compatible AI/LLM chat application. This allows security professionals to interact with their organization's complete security context using their preferred AI assistant, whether it's Claude, ChatGPT, or other MCP-enabled platforms.

## How MCP Connectivity Works

### Graph Database Integration
The MCP connector provides direct access to WINGMAN's data, allowing AI assistants to:
- Query relationships between security nodes (assets, risks, controls, incidents, vulnerabilities)
- Understand complex interdependencies in your security landscape
- Retrieve contextually relevant information based on user queries
- Access real-time security state information

### Authentication & Authorization
- **User-based Access Control**: The MCP connector implements robust authentication to ensure LLMs only access nodes and data permitted for the specific user
- **Role-based Permissions**: Different user roles (standard users vs. superusers) have appropriate data access levels through the MCP interface
- **Organizational Boundaries**: Multi-tenant isolation ensures users only see data from their organization's WINGMAN instance

## Integration Examples

### Claude Integration
Users can connect WINGMAN to Claude Desktop or Claude.ai to:
- Ask questions like "What vulnerabilities affect our customer-facing assets?"
- Request risk assessments: "Show me all high-priority risks related to our payment processing systems"
- Get incident context: "What assets were involved in last month's security incidents?"

### ChatGPT Integration
Similar functionality available for ChatGPT users who can:
- Query compliance status across different requirements
- Request summaries of pending security tasks
- Analyze relationships between threats and organizational assets

## Key Benefits

### Contextual Security Intelligence
- **Complete Picture**: Access to full organizational security context, not just isolated data points
- **Relationship Awareness**: Understanding how changes in one area affect other security components
- **Historical Context**: Access to historical security events and their relationships to current state

### Natural Language Interaction
- **Intuitive Queries**: Ask complex security questions in natural language
- **Dynamic Analysis**: Get AI-powered insights based on current security data
- **Rapid Information Retrieval**: Quickly find relevant security information without navigating complex interfaces

### Workflow Integration
- **Preferred Tools**: Use your favorite AI assistant while maintaining access to organizational security context
- **Seamless Experience**: No need to switch between multiple applications for security analysis
- **Enhanced Productivity**: Leverage AI capabilities with comprehensive security data

## Technical Implementation

### Protocol Compliance
- Full MCP specification compliance ensuring compatibility with major AI platforms
- Standardized data exchange formats for consistent experience across different AI assistants
- Real-time data synchronization with WINGMAN's core database

### Security Considerations
- **Encrypted Connections**: All MCP communications are encrypted in transit
- **Audit Logging**: Complete audit trail of all data access through MCP connector
- **Rate Limiting**: Appropriate limits to prevent abuse while maintaining performance

## Use Case Examples

### Daily Security Briefings
**Query**: "What security issues need my attention today?"
**Response**: AI assistant provides prioritized list of vulnerabilities, pending tasks, and risk updates based on user's role and responsibilities.

### Incident Investigation
**Query**: "Show me all assets and controls related to the database breach incident from last week"
**Response**: Complete relationship map showing affected systems, implemented controls, related vulnerabilities, and remediation tasks.

### Compliance Reporting
**Query**: "What's our current compliance status for SOC 2 requirements?"
**Response**: Detailed breakdown of requirement fulfillment, missing controls, and recommended actions.

### Risk Management
**Query**: "Which risks have increased in probability due to recent vulnerability reports?"
**Response**: Analysis of risk changes based on latest vulnerability data and threat intelligence.

## Getting Started

1. **Configure MCP Connection**: Set up MCP integration in your preferred AI assistant
2. **Authenticate**: Use your WINGMAN credentials to establish secure connection
3. **Verify Access**: Confirm you can access appropriate organizational data
4. **Start Querying**: Begin asking security-related questions using natural language

The MCP connector transforms how security teams interact with their organizational security context, making comprehensive security intelligence available through familiar AI interfaces while maintaining appropriate security controls and data governance.