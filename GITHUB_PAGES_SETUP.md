# 🚀 Deploy Your Dashboard to GitHub Pages

Your UserVoice dashboard is ready to deploy! All files are committed and the data has been anonymized for public access.

## ✅ What's Ready

- ✓ Dashboard code (`index.html`)
- ✓ Anonymized data (`uservoice_ideas.json`)
- ✓ Documentation (`README.md`)
- ✓ Git repository initialized
- ✓ 2 commits created
- ✓ All sensitive data removed (emails, real names)

## 🎯 Quick Deploy (5 minutes)

### Option 1: Use the Deploy Script (Easiest)

```bash
cd /Users/marcin.widla/uservoice-dashboard
./deploy.sh
```

Follow the prompts and instructions!

### Option 2: Manual Setup

#### Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `uservoice-dashboard`
3. Make it **Public**
4. **Don't** initialize with README
5. Click **Create repository**

#### Step 2: Push Your Code

```bash
cd /Users/marcin.widla/uservoice-dashboard

# Add your GitHub username below
git remote add origin https://github.com/YOUR-USERNAME/uservoice-dashboard.git

# Push to GitHub
git push -u origin main
```

**Authentication:** If asked for password, use a Personal Access Token from:
https://github.com/settings/tokens/new (select `repo` scope)

#### Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. **Settings** → **Pages** (left sidebar)
3. Under **Source**:
   - Branch: `main`
   - Folder: `/` (root)
4. Click **Save**

#### Step 4: Access Your Dashboard

Wait 1-2 minutes, then visit:
```
https://YOUR-USERNAME.github.io/uservoice-dashboard/
```

## 📊 What's Included

Your dashboard includes:
- **12,186 UserVoice ideas** (June 15, 2026)
- **5 interactive tabs** (All, Outdated, High Priority, No Jira, No Status)
- **Advanced filtering** and search
- **CSV export** functionality
- **Real-time statistics**
- **Responsive design** (works on mobile)

## 🔒 Privacy & Security

✅ **Data has been anonymized:**
- All email addresses removed
- Creator names replaced with anonymous IDs (User #hash)
- All product feedback preserved (titles, descriptions, votes, revenue)

⚠️ **Note:** The repository and dashboard will be publicly accessible. The data includes:
- Idea titles and descriptions (product feedback)
- Vote counts, comment counts, revenue amounts
- Forum names, labels, Jira links
- Creation dates and ages

If this data is too sensitive, consider:
- Using a **private repository** (requires GitHub Pro)
- Hosting on an internal server instead
- Further anonymizing idea descriptions

## 🔄 Updating the Dashboard

To update data or make changes:

```bash
cd /Users/marcin.widla/uservoice-dashboard

# Make your changes to files

git add .
git commit -m "Update dashboard data"
git push

# GitHub Pages auto-rebuilds in 1-2 minutes
```

## 📁 Repository Structure

```
uservoice-dashboard/
├── index.html                    # Main dashboard (renamed from uservoice-ideas-dashboard.html)
├── uservoice_ideas.json          # Anonymized data (10MB)
├── README.md                     # Project documentation
├── DEPLOY.md                     # Deployment instructions
├── GITHUB_PAGES_SETUP.md        # This file
├── deploy.sh                     # Quick deploy script
├── anonymize_data.py            # Data anonymization script
└── .gitignore                    # Git ignore rules
```

## 🆘 Troubleshooting

### "Repository already exists"
- The repo name is taken. Try a different name or delete the existing repo.

### "Authentication failed"
- Create a Personal Access Token: https://github.com/settings/tokens/new
- Use the token as your password when pushing

### "GitHub Pages not building"
- Make sure repository is **Public**
- Check Settings → Pages for build status
- Wait 2-3 minutes after enabling

### "Dashboard shows but no data"
- Check browser console (F12) for errors
- Verify `uservoice_ideas.json` is in the repository
- Try hard refresh (Cmd+Shift+R)

## 📞 Need Help?

- GitHub Pages docs: https://docs.github.com/pages
- Check repository Actions tab for build status
- Review the DEPLOY.md file for more details

---

**Ready to deploy?** Run `./deploy.sh` or follow the manual steps above!
