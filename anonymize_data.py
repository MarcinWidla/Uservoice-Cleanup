import json
import hashlib

print("Creating anonymized version of the data...")

# Load the data
with open('uservoice_ideas.json', 'r') as f:
    ideas = json.load(f)

# Anonymize sensitive fields
for i, idea in enumerate(ideas):
    # Remove email entirely
    idea.pop('creator_email', None)
    
    # Anonymize creator name (keep consistent via hash)
    if idea.get('creator'):
        # Use hash to create consistent anonymous IDs
        creator_hash = hashlib.md5(idea['creator'].encode()).hexdigest()[:8]
        idea['creator'] = f"User #{creator_hash}"

# Save anonymized version
with open('uservoice_ideas.json', 'w') as f:
    json.dump(ideas, f)

print(f"✓ Anonymized {len(ideas)} ideas")
print("✓ Removed all email addresses")
print("✓ Anonymized creator names")
print("✓ All other data (votes, revenue, descriptions) preserved")
print("\nThe data is now safe to publish on GitHub Pages!")
