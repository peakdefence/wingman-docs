#!/bin/bash

# WINGMAN Documentation Repository Setup Script
# This script helps set up a new GitHub repository and push the documentation

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check for required commands
for cmd in git curl gh; do
    if ! command_exists $cmd; then
        echo -e "${YELLOW}Warning: $cmd is not installed. Please install it and try again.${NC}"
        if [ "$cmd" == "gh" ]; then
            echo "You can install GitHub CLI using: brew install gh"
        fi
        exit 1
    fi
done

# Initialize variables
REPO_NAME="wingman-docs"
REPO_DESCRIPTION="Documentation for WINGMAN - Your Security Context Platform"
REPO_VISIBILITY="public"  # Can be "public" or "private"
GITHUB_USER=""

# Get GitHub username if not set
if [ -z "$GITHUB_USER" ]; then
    GITHUB_USER=$(git config --get user.name)
    if [ -z "$GITHUB_USER" ]; then
        read -p "Enter your GitHub username: " GITHUB_USER
    fi
fi

# Check if already in a git repository
if [ -d ".git" ]; then
    echo -e "${YELLOW}This directory is already a Git repository.${NC}"
    read -p "Do you want to continue setting up GitHub repository? [y/N] " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
else
    # Initialize Git repository
    echo -e "${GREEN}Initializing Git repository...${NC}"
    git init
    
    # Add all files
    git add .
    
    # Make initial commit
    git commit -m "Initial commit: Set up WINGMAN documentation"
fi

# Create repository on GitHub
echo -e "${GREEN}Creating repository on GitHub...${NC}"
gh repo create "$REPO_NAME" \
    --description "$REPO_DESCRIPTION" \
    --$REPO_VISIBILITY \
    --source . \
    --remote origin \
    --push

# Set up GitHub Pages
echo -e "${GREEN}Configuring GitHub Pages...${NC}"
git checkout -b gh-pages
git push -u origin gh-pages
git checkout main

# Enable GitHub Pages
git config --global --add safe.directory $(pwd)
git config user.email "$GITHUB_USER@users.noreply.github.com"
git config user.name "$GITHUB_USER"

# Create .github directory if it doesn't exist
mkdir -p .github/workflows

# Enable GitHub Pages
echo -e "${GREEN}Enabling GitHub Pages...${NC}"
gh api -X PATCH /repos/$GITHUB_USER/$REPO_NAME/pages \
  --field build_type=workflow \
  --field source={"branch":"gh-pages"}

# Set up GitHub Actions permissions
echo -e "${GREEN}Configuring GitHub Actions permissions...${NC}"
git checkout -b setup-actions

# Create a simple workflow to set permissions
cat > .github/workflows/setup-actions.yml << 'EOL'
name: Setup GitHub Actions

on:
  workflow_dispatch:
  push:
    branches: [ setup-actions ]

permissions:
  contents: write
  pages: write
  id-token: write

jobs:
  setup-permissions:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3
      - name: Setup Pages
        uses: actions/configure-pages@v3
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v1
        with:
          path: ./
EOL

git add .github/workflows/setup-actions.yml
git commit -m "Add GitHub Actions setup workflow"
git push -u origin setup-actions

# Create pull request
echo -e "${GREEN}Creating pull request...${NC}"
gh pr create --title "Set up GitHub Actions" --body "This PR sets up GitHub Actions for the documentation site."

echo -e "${GREEN}Repository setup complete!${NC}"
echo -e "Next steps:"
echo "1. Merge the pull request to enable GitHub Pages"
echo "2. Go to Settings > Pages and verify the site is being built from the gh-pages branch"
echo "3. Add your custom domain (docs.peakdefence.com) in the GitHub Pages settings"
echo "4. Set up the following secrets in your repository settings:"
echo "   - SSH_PRIVATE_KEY: Private key for deployment"
echo "   - SSH_HOST: Your server hostname"
echo "   - SSH_USERNAME: Your server username"
echo "   - DEPLOY_PATH: Path on the server where to deploy"

# Open the repository in the browser
echo -e "${GREEN}Opening repository in browser...${NC}"
gh repo view --web
