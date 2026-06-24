import json

# Load the data
with open('uservoice_ideas.json', 'r') as f:
    ideas = json.load(f)

print(f"Total ideas: {len(ideas)}")
print("\nChecking for sensitive data...")

# Check what fields contain potentially sensitive info
sample = ideas[0]
print("\nFields in each idea:")
for key in sample.keys():
    print(f"  - {key}")

# Count ideas with email addresses
with_email = sum(1 for i in ideas if i.get('creator_email'))
print(f"\nIdeas with creator email: {with_email}")

print("\nTo anonymize the data, you can:")
print("1. Remove creator_email field")
print("2. Anonymize creator names (replace with 'User #123')")
print("3. Keep all other fields (votes, revenue, descriptions are product feedback)")
