#!/bin/bash

echo "🚀 UserVoice Dashboard - GitHub Pages Deployment"
echo "================================================"
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: Please run this script from the uservoice-dashboard directory"
    exit 1
fi

# Ask for GitHub username
echo "Enter your GitHub username:"
read github_username

if [ -z "$github_username" ]; then
    echo "❌ Error: GitHub username is required"
    exit 1
fi

# Check if remote already exists
if git remote get-url origin > /dev/null 2>&1; then
    echo "✓ Git remote already configured"
else
    echo "📡 Adding GitHub remote..."
    git remote add origin "https://github.com/$github_username/uservoice-dashboard.git"
fi

echo ""
echo "📤 Pushing to GitHub..."
echo "   Repository: https://github.com/$github_username/uservoice-dashboard"
echo ""

# Push to GitHub
if git push -u origin main; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "📋 Next steps:"
    echo "1. Go to: https://github.com/$github_username/uservoice-dashboard"
    echo "2. Click 'Settings' tab"
    echo "3. Click 'Pages' in left sidebar"
    echo "4. Under 'Source', select:"
    echo "   - Branch: main"
    echo "   - Folder: / (root)"
    echo "5. Click 'Save'"
    echo ""
    echo "🌐 Your dashboard will be live at:"
    echo "   https://$github_username.github.io/uservoice-dashboard/"
    echo ""
    echo "   (Wait 1-2 minutes for GitHub to build and deploy)"
    echo ""
else
    echo ""
    echo "❌ Push failed. This could be because:"
    echo "   1. The repository doesn't exist yet on GitHub"
    echo "   2. You need to authenticate"
    echo ""
    echo "📋 To fix:"
    echo "   1. Create the repository at: https://github.com/new"
    echo "      - Name: uservoice-dashboard"
    echo "      - Public repository"
    echo "      - Don't initialize with README"
    echo "   2. If prompted for password, use a Personal Access Token:"
    echo "      Create at: https://github.com/settings/tokens/new"
    echo "   3. Run this script again"
    echo ""
fi
