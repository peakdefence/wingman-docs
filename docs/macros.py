# WINGMAN Documentation Macros
# This file contains macros and variables available in the documentation

def define_env(env):
    """Define variables and macros for the documentation."""
    
    # Add version information
    env.variables['version'] = '1.0.0'
    env.variables['last_updated'] = '2025-07-31'
    
    # Add common links
    env.variables['repo_url'] = 'https://github.com/PeakDefence/wingman-docs'
    env.variables['site_url'] = 'https://docs.peakdefence.com'
    
    # Add common abbreviations
    env.variables['abbreviations'] = {
        'WINGMAN': 'Web-based INtelligent Governance MANagement',
        'MCP': 'Master Control Program',
        'GRC': 'Governance, Risk, and Compliance',
        'SIEM': 'Security Information and Event Management',
        'SOAR': 'Security Orchestration, Automation, and Response'
    }
    
    # Helper function to create a warning box
    @env.macro
    def warning_box(title, content):
        """Create a warning admonition box."""
        return f"""!!! warning "{title}"
    {content}"""
    
    # Helper function to create a note box
    @env.macro
    def note_box(title, content):
        """Create a note admonition box."""
        return f"""!!! note "{title}"
    {content}"""
    
    # Helper function to create a tip box
    @env.macro
    def tip_box(title, content):
        """Create a tip admonition box."""
        return f"""!!! tip "{title}"
    {content}"""
    
    # Helper function to create a danger box
    @env.macro
    def danger_box(title, content):
        """Create a danger admonition box."""
        return f"""!!! danger "{title}"
    {content}"""
    
    # Helper function to create a version badge
    @env.macro
    def version_badge(version=None):
        """Create a version badge."""
        ver = version or env.variables['version']
        return f'<span class="md-version">{ver}</span>'
    
    # Add a filter to format dates
    @env.filter
    def format_date(date_str, format_str='%B %d, %Y'):
        """Format a date string."""
        from datetime import datetime
        try:
            date = datetime.strptime(date_str, '%Y-%m-%d')
            return date.strftime(format_str)
        except (ValueError, TypeError):
            return date_str
    
    # Add a filter to get the current year
    @env.filter
    def current_year():
        """Return the current year."""
        from datetime import datetime
        return str(datetime.now().year)
    
    # Add a filter to create a GitHub edit link
    @env.filter
    def github_edit_link(page):
        """Create a GitHub edit link for a page."""
        base_url = 'https://github.com/PeakDefence/wingman-docs/edit/main/'
        return f"{base_url}docs/{page}"
    
    # Add a filter to create a GitHub issue link
    @env.filter
    def github_issue_link(title=None, body=None):
        """Create a GitHub issue link."""
        base_url = 'https://github.com/PeakDefence/wingman-docs/issues/new'
        params = []
        if title:
            params.append(f'title={title.replace(" ", "+")}')
        if body:
            params.append(f'body={body.replace(" ", "+")}')
        if params:
            return f"{base_url}?{'&'.join(params)}"
        return base_url
