#!/usr/bin/env bash
# Captures key command outputs into ~/linux-practical/evidence/ as text files.
# Run INSIDE the VM as the student user, after finishing the tasks.
# It only reads and writes files inside the evidence folder.

BASE="$HOME/linux-practical"
OUT="$BASE/evidence"
mkdir -p "$OUT" || exit 1

{
  echo "== Date =="; date
  echo "== Distro =="; (. /etc/os-release 2>/dev/null && echo "$PRETTY_NAME")
  echo "== whoami =="; whoami
  echo "== id ==";     id
  echo "== pwd ==";    pwd
  echo "== HOME ==";   echo "$HOME"
} > "$OUT/task1_identity.txt"

{ echo "== ls /"; ls /; echo; echo "== ls -l /etc (first 20 lines)"; ls -l /etc | head -20; } > "$OUT/task2_fhs.txt"

{ echo "== ls =="; ls ~; echo; echo "== ls -l =="; ls -l ~; echo; echo "== ls -a =="; ls -a ~; } > "$OUT/task3_hidden.txt"

{ echo "== app.conf =="; cat "$BASE/config/app.conf"; echo; echo "== overview.txt =="; cat "$BASE/documents/overview.txt"; } > "$OUT/task5_files.txt" 2>&1

{
  echo "== find app.conf =="; find "$BASE" -type f -name 'app.conf'
  echo "== grep LOG_LEVEL =="; grep -n 'LOG_LEVEL' "$BASE/config/app.conf"
} > "$OUT/task7_search.txt" 2>&1

{ ls -l "$BASE/config/app.conf" "$BASE/documents/tasks.txt"; echo; id; } > "$OUT/task8_permissions.txt" 2>&1

{ find "$BASE" -maxdepth 2 -print; echo; ls -la "$BASE"; } > "$OUT/task9_final.txt" 2>&1

echo "Evidence saved to $OUT:"
ls -1 "$OUT"
