// Custom JavaScript for WINGMAN Documentation

document.addEventListener('DOMContentLoaded', function() {
    // Initialize tooltips for abbreviations
    initAbbreviationTooltips();
    
    // Add copy button to code blocks
    addCopyButtonsToCodeBlocks();
    
    // Add smooth scrolling for anchor links
    enableSmoothScrolling();
    
    // Add custom behavior for external links
    handleExternalLinks();
});

/**
 * Initialize tooltips for abbreviations
 */
function initAbbreviationTooltips() {
    // This is handled by CSS, but we can add additional behavior here if needed
    console.log('Abbreviation tooltips initialized');
    
    // Optional: Add a visual indicator for abbreviations
    const abbreviations = document.querySelectorAll('abbr[title]');
    abbreviations.forEach(abbr => {
        abbr.setAttribute('data-has-tooltip', 'true');
    });
}

/**
 * Add copy button to code blocks
 */
function addCopyButtonsToCodeBlocks() {
    const codeBlocks = document.querySelectorAll('.highlight');
    
    codeBlocks.forEach(block => {
        // Create copy button
        const button = document.createElement('button');
        button.className = 'md-clipboard';
        button.title = 'Copy to clipboard';
        
        // Add icon
        const icon = document.createElement('span');
        icon.className = 'md-icon';
        icon.textContent = 'content_copy';
        button.appendChild(icon);
        
        // Insert button
        const wrapper = document.createElement('div');
        wrapper.className = 'code-block-wrapper';
        wrapper.style.position = 'relative';
        
        // Wrap code block with the wrapper
        block.parentNode.insertBefore(wrapper, block);
        wrapper.appendChild(block);
        
        // Add button to wrapper
        wrapper.appendChild(button);
        
        // Add click event
        button.addEventListener('click', async () => {
            const code = block.querySelector('code').textContent;
            
            try {
                await navigator.clipboard.writeText(code);
                
                // Visual feedback
                const originalTitle = button.title;
                button.title = 'Copied!';
                button.classList.add('copied');
                
                // Reset after 2 seconds
                setTimeout(() => {
                    button.title = originalTitle;
                    button.classList.remove('copied');
                }, 2000);
                
            } catch (err) {
                console.error('Failed to copy: ', err);
            }
        });
    });
}

/**
 * Enable smooth scrolling for anchor links
 */
function enableSmoothScrolling() {
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();
            
            const targetId = this.getAttribute('href');
            if (targetId === '#') return;
            
            const targetElement = document.querySelector(targetId);
            if (targetElement) {
                window.scrollTo({
                    top: targetElement.offsetTop - 20,
                    behavior: 'smooth'
                });
                
                // Update URL without jumping
                history.pushState(null, null, targetId);
            }
        });
    });
}

/**
 * Handle external links
 */
function handleExternalLinks() {
    // Add external link icon and open in new tab
    document.querySelectorAll('a').forEach(link => {
        if (link.hostname && link.hostname !== window.location.hostname) {
            link.target = '_blank';
            link.rel = 'noopener noreferrer';
            
            // Add external link icon
            const icon = document.createElement('span');
            icon.className = 'external-link-icon';
            icon.textContent = 'open_in_new';
            icon.style.marginLeft = '4px';
            icon.style.fontSize = '0.8em';
            icon.style.verticalAlign = 'middle';
            
            link.appendChild(icon);
        }
    });
}

/**
 * Debounce function for performance optimization
 */
function debounce(func, wait) {
    let timeout;
    return function() {
        const context = this;
        const args = arguments;
        clearTimeout(timeout);
        timeout = setTimeout(() => func.apply(context, args), wait);
    };
}

// Add a class to the body when page is scrolled
window.addEventListener('scroll', debounce(function() {
    if (window.scrollY > 50) {
        document.body.classList.add('scrolled');
    } else {
        document.body.classList.remove('scrolled');
    }
}, 100));
