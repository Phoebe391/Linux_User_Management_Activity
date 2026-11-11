# Activity Instructions (condensed)

Scenario: you are a junior Linux support technician. Create a separate account for a new technician, sign in as that user, and complete a filesystem setup task without using the admin account for the work.

Replace `<student_username>` with the username your instructor assigned.

## Safety rules
- Use a Linux VM or dedicated lab computer, not a production server.
- Sudo is needed only for the user-creation step.
- Work only inside your own home directory.
- Do not delete, rename, or chmod system files/directories.
- No recursive permission changes (`chmod -R`).
- Redact passwords in logs and screenshots.
- If a command differs on your distro, record the distro and what you tried.

## Task 1 - Create a new user and switch identity (15)
```bash
sudo adduser <student_username>      # or useradd workflow if adduser is missing
su - <student_username>
whoami
id
pwd
echo $HOME
```
Acceptance: `whoami` shows the new username; `pwd` is the user's home.

## Task 2 - Explore the FHS (15)
Visit `/`, `/home`, `/etc`, `/var`, `/tmp`, `/usr`, `/bin`. For each, record the path and one sentence on its typical purpose.
```bash
pwd
ls /
ls -l /etc
cd /var
pwd
cd ~
```

## Task 3 - Inspect files and hidden entries (10)
```bash
ls
ls -l
ls -a
mkdir ~/.lab-notes
ls -a ~
```
Record one difference between the outputs.

## Task 4 - Build the workspace (15)
```bash
mkdir -p ~/linux-practical/{config,documents,backups,evidence}
nano ~/linux-practical/documents/overview.txt     # at least 4 lines
nano ~/linux-practical/documents/checklist.txt    # at least 3 task items
```
Nano: `Ctrl+O`, `Enter`, `Ctrl+X`.

## Task 5 - app.conf with nano (10)
`nano ~/linux-practical/config/app.conf`, enter:
```
APP_NAME=LinuxPractical
OWNER=<student_username>
ENVIRONMENT=training
LOG_LEVEL=info
BACKUP_ENABLED=true
```
Save, reopen, change `LOG_LEVEL` to `debug`, add `CONTACT=student`, save, then `cat` the file.

## Task 6 - Copy, move, remove (10)
```bash
cp ~/linux-practical/documents/overview.txt ~/linux-practical/backups/
cp ~/linux-practical/config/app.conf ~/linux-practical/backups/
mv ~/linux-practical/documents/checklist.txt ~/linux-practical/documents/tasks.txt
touch ~/linux-practical/documents/remove-me.txt
rm ~/linux-practical/documents/remove-me.txt
```
Verify each step with `ls` / `ls -l`.

## Task 7 - find and grep (10)
```bash
find ~/linux-practical -type f -name 'app.conf'
grep -n 'YOUR_SEARCH_TERM' ~/linux-practical/documents/overview.txt
grep -n 'LOG_LEVEL' ~/linux-practical/config/app.conf
```
Use a word that really appears in your `overview.txt`.

## Task 8 - Permissions (15)
```bash
chmod 644 ~/linux-practical/config/app.conf
chmod 600 ~/linux-practical/documents/tasks.txt
ls -l ~/linux-practical/config/app.conf ~/linux-practical/documents/tasks.txt
id
```
Explain in your own words what `644` and `600` mean and what `id` displays.

## Task 9 - Final verification (5)
```bash
find ~/linux-practical -maxdepth 2 -print
ls -la ~/linux-practical
```
Save screenshots/captures into the `evidence` directory where practical.

## Reflection questions
See `docs/REFLECTION.md`.
