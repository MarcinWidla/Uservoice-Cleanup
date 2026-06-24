#!/bin/bash
echo "Please enter your GitHub Personal Access Token:"
echo "(Create one at: https://github.com/settings/tokens/new - select 'repo' scope)"
read -s TOKEN

git remote remove origin 2>/dev/null
git remote add origin https://MarcinWidla:$TOKEN@github.com/MarcinWidla/uservoice-dashboard.git
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "Next step: Enable GitHub Pages"
    echo "1. Go to: https://github.com/MarcinWidla/uservoice-dashboard/settings/pages"
    echo "2. Under 'Source', select: main branch, / folder"
    echo "3. Click Save"
    echo ""
    echo "Your dashboard will be live at:"
    echo "https://marcinwidla.github.io/uservoice-dashboard/"
else
    echo ""
    echo "❌ Push failed. Please check your Personal Access Token."
fi
