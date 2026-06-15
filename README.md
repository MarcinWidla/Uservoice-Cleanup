# UserVoice Ideas Dashboard

Interactive dashboard for analyzing and managing UserVoice feedback ideas.

## Features

- **5 Interactive Tabs:**
  - 📋 All Ideas - Complete dataset with advanced filtering
  - ⏰ Outdated - Ideas from before 2024 or inactive 180+ days
  - ⭐ High Priority - Ideas with 10+ votes OR $100k+ revenue OR 5+ comments
  - 🔗 No Jira - Ideas without Jira linkage
  - 📝 No Status - Ideas without public status updates

- **Advanced Filtering:**
  - Search by title/description
  - Filter by priority, forum, year
  - Filter outdated ideas by engagement and Jira status
  - Real-time stats and metrics

- **Export Functionality:**
  - Export filtered results to CSV
  - Includes all metadata (votes, comments, revenue, age, etc.)

- **Interactive Features:**
  - Click-through links to UserVoice admin console
  - Color-coded priority badges
  - Pagination (50 ideas per page)
  - Real-time statistics

## Dataset

This dashboard analyzes **12,186 UserVoice ideas** captured on June 15, 2026.

### Key Statistics:
- **100%** have no public status (12,186 ideas)
- **96%** have no Jira link (11,706 ideas)
- **69%** are high priority based on engagement (8,458 ideas)
- **66%** are outdated (7,994 ideas)

## Usage

Simply open the dashboard in any modern web browser. The data is embedded and requires no backend server.

### View Online
Visit: [Your GitHub Pages URL will be here]

### Run Locally
```bash
# Clone the repository
git clone [your-repo-url]

# Open in browser
open index.html
```

## Data Schema

Each idea includes:
- ID, Title, Description
- Created date, Last updated date, Age in days
- Votes, Comments, Revenue
- Forum, Category, Labels
- Jira linkage, Public status
- Creator information
- Priority classification (High/Medium/Low)
- Outdated flag

## Action Recommendations

### Quick Wins (480 ideas)
Ideas with Jira links but no status - sync from Jira

### Archive Candidates (20 ideas)
Pre-2024 ideas with zero engagement and no Jira

### High Value Review (8,458 ideas)
High-priority ideas needing PM triage and Jira creation

### Potential Duplicates (6,202 ideas)
2025-2026 ideas without status - scan for duplicates

## Technical Details

- Pure HTML/CSS/JavaScript (no dependencies)
- Uses Chart.js for visualizations (loaded from CDN)
- Client-side data processing
- Responsive design
- Works on all modern browsers

## License

Internal use for UserVoice data analysis and cleanup planning.

---

**Last Updated:** June 15, 2026
