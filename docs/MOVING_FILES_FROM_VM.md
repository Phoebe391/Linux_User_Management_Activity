# Getting your work from the Linux VM into this repo

The practical runs in the VM; the push to GitHub happens from Git Bash. Pick one method.

## Option A - Shared folder (VirtualBox / VMware)
Enable a shared folder to your host, then in the VM (as the student user):
```bash
cp -r ~/linux-practical /path/to/shared/folder/
cp ~/evidence-output/*.txt /path/to/shared/folder/
```
Then copy the contents into this repo on your host.

## Option B - scp from the VM to your host
Find the host path/IP, then from the **VM**:
```bash
scp -r ~/linux-practical <host_user>@<host_ip>:/c/Users/<you>/linux-user-mgmt-practical/
```
Or from Git Bash on the host (if the VM runs SSH):
```bash
scp -r <student_username>@<vm_ip>:~/linux-practical ./
```

## Option C - Push directly from the VM
```bash
sudo apt install git     # only if missing, as the admin account
git clone https://github.com/<your-username>/linux-user-mgmt-practical.git
cp -r ~/linux-practical/* linux-user-mgmt-practical/linux-practical/
cd linux-user-mgmt-practical && git add . && git commit -m "Add practical output" && git push
```

## Screenshots
Save screenshots on the host and drop them into `screenshots/` using this naming:
```
task1_whoami_id.png
task2_fhs_listing.png
task3_ls_hidden.png
task4_workspace_tree.png
task5_appconf_cat.png
task6_cp_mv_rm.png
task7_find_grep.png
task8_permissions.png
task9_final_listing.png
```

## Passwords
Never include passwords in screenshots, logs, or commits.
