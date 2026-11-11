# Git Bash -> GitHub Workflow

Run these in **Git Bash on your host machine** (not inside the Linux VM, unless Git is installed there and you prefer to push from it).

## 0. One-time setup
```bash
git config --global user.name  "Your Name"
git config --global user.email "adaezepenny14@gmail.com"   # use the email on your GitHub account
git --version
```

## 1. Create an empty repo on GitHub
1. GitHub -> **New repository**.
2. Name: `linux-user-mgmt-practical`.
3. Choose Private or Public (follow your instructor).
4. Do **not** add a README, .gitignore or license (this project already has them).
5. Copy the repo URL (HTTPS or SSH).

## 2. Unzip and initialise
```bash
cd ~/Downloads
unzip linux-user-mgmt-practical.zip
cd linux-user-mgmt-practical
git init -b main
git add .
git commit -m "Initial commit: practical assessment scaffold"
```

## 3. Connect and push
```bash
git remote add origin https://github.com/<your-username>/linux-user-mgmt-practical.git
git push -u origin main
```
When prompted for a password, use a **Personal Access Token** (GitHub -> Settings -> Developer settings -> Personal access tokens), not your account password. Or set up SSH keys and use the `git@github.com:...` URL.

## 4. Suggested commit rhythm (one commit per task)
```bash
git add docs/EVIDENCE_LOG.md screenshots/
git commit -m "Task 1: create user and switch identity"
git commit -am "Task 2: FHS exploration notes"
# ... continue through Task 9
git push
```
Optional: work on a branch and open a PR.
```bash
git checkout -b practical-work
git push -u origin practical-work
```

## 5. Check before every push
```bash
git status
git diff --staged
```
Make sure no passwords or secrets appear in logs or screenshots.

## Common problems
| Problem | Fix |
|---|---|
| `fatal: remote origin already exists` | `git remote set-url origin <url>` |
| `Authentication failed` | Use a personal access token, not your password |
| `rejected ... fetch first` | `git pull --rebase origin main` then push again |
| Empty folders missing on GitHub | Git ignores empty folders; keep the `.gitkeep` files |
| Line-ending warnings | Harmless; `.gitattributes` forces LF on scripts |
