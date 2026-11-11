#!/usr/bin/env bash
# Self-check for the Linux practical. Run INSIDE the VM as the student user.
# Usage: bash verify_practical.sh [path-to-linux-practical]
# Read-only: this script changes nothing.

BASE="${1:-$HOME/linux-practical}"
pass=0; fail=0

ok()   { echo "[PASS] $1"; pass=$((pass+1)); }
bad()  { echo "[FAIL] $1"; fail=$((fail+1)); }
check(){ if eval "$2"; then ok "$1"; else bad "$1"; fi; }

echo "Checking: $BASE"
echo "Current user: $(whoami)"
echo

[ "$(id -u)" -ne 0 ] && ok "Not running as root" || bad "Running as root (use the student account)"

# Task 3
check "Hidden dir ~/.lab-notes exists"        '[ -d "$HOME/.lab-notes" ]'

# Task 4
for d in config documents backups evidence; do
  check "Directory $d exists"                 "[ -d \"$BASE/$d\" ]"
done
check "overview.txt has >= 4 lines"           '[ "$(wc -l < "$BASE/documents/overview.txt" 2>/dev/null || echo 0)" -ge 4 ]'
check "tasks.txt has >= 3 lines"              '[ "$(wc -l < "$BASE/documents/tasks.txt" 2>/dev/null || echo 0)" -ge 3 ]'

# Task 5
conf="$BASE/config/app.conf"
check "app.conf APP_NAME=LinuxPractical"      "grep -qx 'APP_NAME=LinuxPractical' \"$conf\""
check "app.conf OWNER=$(whoami)"              "grep -qx \"OWNER=$(whoami)\" \"$conf\""
check "app.conf ENVIRONMENT=training"         "grep -qx 'ENVIRONMENT=training' \"$conf\""
check "app.conf LOG_LEVEL=debug"              "grep -qx 'LOG_LEVEL=debug' \"$conf\""
check "app.conf BACKUP_ENABLED=true"          "grep -qx 'BACKUP_ENABLED=true' \"$conf\""
check "app.conf CONTACT=student"              "grep -qx 'CONTACT=student' \"$conf\""

# Task 6
check "Backup of overview.txt exists"         '[ -f "$BASE/backups/overview.txt" ]'
check "Original overview.txt still exists"    '[ -f "$BASE/documents/overview.txt" ]'
check "Backup of app.conf exists"             '[ -f "$BASE/backups/app.conf" ]'
check "checklist.txt renamed to tasks.txt"    '[ -f "$BASE/documents/tasks.txt" ] && [ ! -e "$BASE/documents/checklist.txt" ]'
check "remove-me.txt is gone"                 '[ ! -e "$BASE/documents/remove-me.txt" ]'

# Task 8
check "app.conf permissions are 644"          '[ "$(stat -c %a "$BASE/config/app.conf" 2>/dev/null)" = "644" ]'
check "tasks.txt permissions are 600"         '[ "$(stat -c %a "$BASE/documents/tasks.txt" 2>/dev/null)" = "600" ]'

echo
echo "Result: $pass passed, $fail failed"
[ "$fail" -eq 0 ]
