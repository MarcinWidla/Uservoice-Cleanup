# Deploy to GitHub Pages

## Quick Deploy (Recommended)

Follow these steps to deploy your dashboard to GitHub Pages:

### Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `uservoice-dashboard`
3. Description: `Interactive dashboard for UserVoice ideas analysis`
4. Set to **Public** (required for free GitHub Pages)
5. **Do NOT** initialize with README (we already have one)
6. Click **Create repository**

### Step 2: Push to GitHub

Open Terminal and run these commands:

```bash
cd /Users/marcin.widla/uservoice-dashboard

# Add GitHub remote (replace YOUR-USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR-USERNAME/uservoice-dashboard.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**Note:** If prompted for credentials, use:
- Username: Your GitHub username
- Password: Your Personal Access Token (not your GitHub password)
  - Create one at: https://github.com/settings/tokens/new
  - Required scopes: `repo`

### Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll down to **Pages** section (left sidebar)
4. Under **Source**, select:
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **Save**

### Step 4: Access Your Dashboard

After 1-2 minutes, your dashboard will be available at:

```
https://YOUR-USERNAME.github.io/uservoice-dashboard/
```

GitHub will show you the exact URL in the Pages settings.

## Alternative: Deploy to GitHub Pages with gh CLI

If you have GitHub CLI installed:

```bash
cd /Users/marcin.widla/uservoice-dashboard

# Create repository and push
gh repo create uservoice-dashboard --public --source=. --remote=origin --push

# Enable GitHub Pages
gh api repos/:owner/uservoice-dashboard/pages \
  -X POST \
  -f source[branch]=main \
  -f source[path]=/
```

## Troubleshooting

### Issue: "Authentication failed"
**Solution:** Create a Personal Access Token:
1. Go to https://github.com/settings/tokens/new
2. Name it "UserVoice Dashboard"
3. Select `repo` scope
4. Generate and copy the token
5. Use it as your password when pushing

### Issue: "Repository already exists"
**Solution:** Either:
- Delete the existing repository on GitHub
- Or use a different repository name

### Issue: "GitHub Pages not showing"
**Solution:**
- Wait 2-3 minutes after enabling Pages
- Check Settings → Pages for deployment status
- Make sure repository is Public

## Update Dashboard

To update the dashboard after changes:

```bash
cd /Users/marcin.widla/uservoice-dashboard

# Make your changes to index.html or data file

git add .
git commit -m "Update dashboard"
git push

# GitHub Pages will automatically rebuild in 1-2 minutes
```

## Security Note

⚠️ **Important:** The data file (`uservoice_ideas.json`) will be publicly accessible on the internet. Make sure:

1. The data doesn't contain sensitive customer information
2. You have permission to publish this data
3. Consider removing or anonymizing:
   - Customer names
   - Customer email addresses
   - Internal notes or private information

If the data is sensitive, consider:
- Using a **Private** repository (requires GitHub Pro)
- Or password-protecting the page
- Or hosting on an internal server instead

## Next Steps

After deployment:
1. Test the live URL in your browser
2. Share the URL with your team
3. Bookmark it for easy access
4. Update README.md with the live URL
