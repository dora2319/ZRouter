#!/bin/sh

HOST=`hostname`
echo "'${HOST}'"
if [ "x${HOST}" = "xrnote.ddteam.net" ] ; then
FREEBSD_SRC_TREE=/usr/home/ray/work/@HG/http_my_ddteam_net_hg_BASE_/head/
else
FREEBSD_SRC_TREE=/usr/1/MIPS_FreeBSD/HEAD/head
fi
DATE=`date +%Y-%m-%d_%H:%M`


__MAKE_CONF=/dev/null
SRCCONF=/dev/null

export __MAKE_CONF
export SRCCONF

make TARGET_PAIR=D-Link/DIR-620 FREEBSD_SRC_TREE=${FREEBSD_SRC_TREE} kernel.oldlzma.uboot 2>&1 | tee $0.${DATE}.log
cp /usr/obj/usr/home/ray/work/DDTeam.net/ZRouter/zrouter/D-Link_DIR-620_kernel.oldlzma.uboot /tftpboot/DIR-620/


echo ${TARGET_PAIR} kernel image build done at `date`

