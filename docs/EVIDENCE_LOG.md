# Evidence Log

**Student:** ____________  **Cohort:** ____________  **Date:** ____________
**Username:** ____________  **Distro / version:** ____________

> Paste commands and meaningful output in each block. Redact passwords.

---

## Task 1 - Create user and switch identity
Commands used:
```
```
Output of `whoami`, `id`, `pwd`, `echo $HOME`:
```
```
Screenshot: `screenshots/task1_whoami_id.png`

## Task 2 - Explore the FHS
| Path | Purpose (one sentence) |
|---|---|
| `/` | |
| `/home` | |
| `/etc` | |
| `/var` | |
| `/tmp` | |
| `/usr` | |
| `/bin` | |

Output:
```
```
Screenshot: `screenshots/task2_fhs_listing.png`

## Task 3 - Inspect files and hidden entries
Output of `ls`, `ls -l`, `ls -a`:
```
```
One observed difference:

`mkdir ~/.lab-notes` and `ls -a ~` output:
```
```
Screenshot: `screenshots/task3_ls_hidden.png`

## Task 4 - Workspace
Commands and tree/listing:
```
```
Screenshot: `screenshots/task4_workspace_tree.png`

## Task 5 - app.conf
Final `cat` output:
```
```
Screenshot: `screenshots/task5_appconf_cat.png`

## Task 6 - Copy, move, remove
Commands and `ls -l` verification after each step:
```
```
Screenshot: `screenshots/task6_cp_mv_rm.png`

## Task 7 - find and grep
```
```
Screenshot: `screenshots/task7_find_grep.png`

## Task 8 - Permissions
`ls -l` output:
```
```
Explanation of `644`:

Explanation of `600`:

`id` output and explanation (uid, gid, groups):
```
```
Screenshot: `screenshots/task8_permissions.png`

## Task 9 - Final verification
`find ~/linux-practical -maxdepth 2 -print`:
```
```
`ls -la ~/linux-practical`:
```
```
Screenshot: `screenshots/task9_final_listing.png`

## Notes / problems encountered
