# Instructions to Push to Assignment Main Branch

## Option 1: Using the Script (Recommended)

1. Run the push script with your Assignment repository URL:
   ```bash
   ./push_to_assignment.sh https://github.com/YOUR_USERNAME/Assignment.git
   ```
   
   Or if using SSH:
   ```bash
   ./push_to_assignment.sh git@github.com:YOUR_USERNAME/Assignment.git
   ```

## Option 2: Manual Setup

### Step 1: Add Assignment Remote
```bash
git remote add assignment https://github.com/YOUR_USERNAME/Assignment.git
```

Or if you already have a remote named differently:
```bash
git remote set-url assignment https://github.com/YOUR_USERNAME/Assignment.git
```

### Step 2: Fetch from Assignment Repository
```bash
git fetch assignment
```

### Step 3: Push to Assignment Main Branch
```bash
git push assignment main:main
```

If the branch doesn't exist yet, use:
```bash
git push -u assignment main:main
```

## Option 3: If You Want to Create a Separate Branch

If you want to keep your current branch and create a new one for Assignment:

```bash
# Create and switch to assignment branch
git checkout -b assignment-main

# Push to Assignment repository
git push -u assignment assignment-main:main
```

## Verify Your Setup

Check your remotes:
```bash
git remote -v
```

Check your branches:
```bash
git branch -a
```

## Troubleshooting

### If you get "remote already exists" error:
```bash
git remote remove assignment
git remote add assignment <your-url>
```

### If you need to force push (use with caution):
```bash
git push -f assignment main:main
```

### If you want to rename your current branch:
```bash
git branch -m assignment-main
git push -u assignment assignment-main:main
```

