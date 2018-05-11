#FIX "VDP: [001] The most recent checkpoint for the VDP appliance is outdated"
#https://www.experts-exchange.com/articles/17333/HOW-TO-Fix-the-VMware-Data-Protection-error-VDP-001-The-most-recent-checkpoint-for-the-VDP-appliance-is-outdated.html

dpnctl stop

mount | grep data
/dev/sde1 on /data01 type xfs (rw,noatime)
/dev/sdf1 on /data02 type xfs (rw,noatime)
/dev/sdg1 on /data03 type xfs (rw,noatime)

umount /dev/sde1 && umount /dev/sdf1 && umount /dev/sdg1

xfs_check /dev/sde1 && xfs_check /dev/sdf1 && xfs_check /dev/sdg1

mount -a

mount | grep data
/dev/sde1 on /data01 type xfs (rw,noatime)
/dev/sdf1 on /data02 type xfs (rw,noatime)
/dev/sdg1 on /data03 type xfs (rw,noatime)

dpnctl start all

dpnctl stop maint

avmaint checkpoint --ava

avmaint hfscheck --full --ava

avmaint hfscheckstatus --ava | grep 'status\|result'

dpnctl start maint
