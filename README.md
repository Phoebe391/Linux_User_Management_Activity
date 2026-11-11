# Linux User Management & Filesystem Practical

Hands-on assessment repository: **Linux command line • user context • FHS navigation • files and permissions**

| Field | Value |
|---|---|
| Student name | _your name_ |
| Class / cohort | _your cohort_ |
| Linux username (from instructor) | _username_ |
| Distribution / version | _e.g. Ubuntu 24.04 LTS_ |
| Duration | 90-120 minutes |

---

## Repository layout

```
linux-user-mgmt-practical/
├── README.md                  <- you are here
├── .gitignore
├── .gitattributes
├── .github/workflows/
│   └── structure-check.yml    <- optional CI: checks required files exist
├── docs/
│   ├── ACTIVITY_INSTRUCTIONS.md   <- the tasks, condensed from the PDF
│   ├── GIT_BASH_WORKFLOW.md       <- push to GitHub step by step
│   ├── MOVING_FILES_FROM_VM.md    <- get work out of the Linux VM
│   ├── EVIDENCE_LOG.md            <- fill in as you work (Tasks 1-9)
│   ├── REFLECTION.md              <- short reflection answers
│   └── SUBMISSION_CHECKLIST.md
├── screenshots/               <- all screenshots (task1_..., task2_...)
├── scripts/
│   ├── verify_practical.sh        <- run in the VM to self-check your work
│   └── collect_evidence.sh        <- run in the VM to capture command outputs
└── linux-practical/           <- mirror of the workspace you build in the VM
    ├── config/
    ├── documents/
    ├── backups/
    └── evidence/
```

## Workflow at a glance

1. **Clone / unzip** this repo on your Windows (or Mac) machine.
2. **Do the practical inside your Linux VM** (never a production server), working as the new user, following `docs/ACTIVITY_INSTRUCTIONS.md`.
3. **Record** commands and outputs in `docs/EVIDENCE_LOG.md`. Take screenshots into `screenshots/`.
4. **Run** `scripts/verify_practical.sh` in the VM to check your work, and `scripts/collect_evidence.sh` to save outputs.
5. **Copy** your finished `linux-practical/` folder and evidence back to this repo (see `docs/MOVING_FILES_FROM_VM.md`).
6. **Commit and push** with Git Bash (see `docs/GIT_BASH_WORKFLOW.md`).

## Rules

- Do the practical on a VM or dedicated lab machine only.
- Complete Tasks 2-9 as the **new user**, not as admin.
- No `chmod -R`. Don't touch system files.
- **Never commit passwords.** Redact them in logs and screenshots.

## Marks

| Task | Topic | Marks |
|---|---|---|
| 1 | Create user and switch identity | 15 |
| 2 | Explore the FHS | 15 |
| 3 | Inspect files and hidden entries | 10 |
| 4 | Build project workspace | 15 |
| 5 | Create/edit config file with nano | 10 |
| 6 | Copy, move, remove files | 10 |
| 7 | find and grep | 10 |
| 8 | Permissions | 15 |
| 9 | Final verification and evidence | 5 |
| | **Total** | **105** |

_(The PDF's task marks add up to 105; confirm the total with your instructor.)_
