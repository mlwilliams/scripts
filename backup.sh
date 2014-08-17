#!/bin/sh

START=$(date +%s)
rsync -aAXv --delete /* /mnt/archbk --exclude={/dev/*,/proc/*,/sys/*,/tmp/*,/run/*,/mnt/*,/media/*,/lost+found,/home/*/.gvfs,/var/lib/pacman/sync/*,/home/*/.thumbnails/*,/home/*/.cache/chromium/*}
FINISH=$(date +%s)
echo "total time: $(( ($FINISH-$START) / 60 )) minutes, $(( ($FINISH-$START) % 60 )) seconds"

touch /mnt/archbk"Backup from $(date '+%A, %d %B %Y, %T')"
