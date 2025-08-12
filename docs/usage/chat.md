# Chat Interface

This guide explains how to use the WINGMAN chat interface for security operations.

## Overview

The chat interface provides a conversational way to interact with WINGMAN, allowing you to query data, execute commands, and receive alerts.

## Getting Started

### Accessing the Chat in WINGMAN interface

1. Log in to the WINGMAN web interface
2. Click on the chat icon in the bottom-right corner
3. Start typing your query or command


## Advanced Usage

### Natural Language Queries

Ask questions in plain English:
- "Show me high severity vulnerabilities from the last 7 days"
- "What assets are missing critical patches?"
- "Generate a compliance report for PCI DSS"


## Integration with Other Features

## Best Practices

1. **Be Specific**: Provide context in your queries
2. **Use Filters**: Narrow down results with filters
3. **Save Queries**: Save frequently used queries
4. **Review History**: Access your chat history for reference

## Troubleshooting

### Common Issues

- **No response**: Check your internet connection
- **Command not found**: Verify the command syntax
- **Permission denied**: Check your user permissions

### Getting Help

- Type `help` for a list of commands
- Visit the [documentation](https://docs.wingman.peakdefence.com)
- Contact support through the help menu


## MCP based chat interface

WINGMAN supports ability to integrate the chat with any MCP supporting chat application whihc would allow the application to get access to the chat interface and a set of functions which would allow reading the contents from the WINGMAN as well as actively initiate actions available through MCP interface.

Below is an example of using Claude MCP connection to WINGMAN (TBD)

Please contact us to set up MCP instance for your deployment.
More details on [MCP integration](../integrations/mcp-connector.md)