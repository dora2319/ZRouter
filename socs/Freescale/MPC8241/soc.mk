
#XXX testing
KERNEL_PATH=/usr/obj/kernel

TARGET=			powerpc
TARGET_ARCH=		powerpc

KERNCONF_MACHINE=	${TARGET} ${TARGET_ARCH}
KERNCONF_IDENT?=	MPC8241
KERNCONF_CPU+= 		BOOKE
KERNCONF_CPU+= 		BOOKE_E500

#KERNCONF_MAKEOPTIONS+=  CONF_CFLAGS="-Wa,-me500 -g"
KERNCONF_MAKEOPTIONS+=  NO_MODULES=yes

KERNCONF_OPTIONS+=	FPU_EMU
KERNCONF_OPTIONS+=	MPC85XX

KERNCONF_OPTIONS+=	SC_OFWFB

KERNCONF_OPTIONS+=	FDT
KERNCONF_OPTIONS+=	FDT_DTB_STATIC
KERNCONF_MAKEOPTIONS+=	"FDT_DTS_FILE=mpc8555cds.dts"

KERNCONF_OPTIONS+= 	HZ=100
KERNCONF_OPTIONS+= 	DEVICE_POLLING
#KERNCONF_OPTIONS+= 	HWPMC_HOOKS

KERNCONF_OPTIONS+=		MAXUSERS=3
KERNCONF_OPTIONS+=		MAXFILES=512
KERNCONF_OPTIONS+=		NSFBUFS=1024
KERNCONF_OPTIONS+=		SHMALL=128
KERNCONF_OPTIONS+=		MSGBUF_SIZE=65536

# Options for making kernel smallest 
#KERNCONF_OPTIONS+=		NO_SYSCTL_DESCR
KERNCONF_OPTIONS+=		NO_FFS_SNAPSHOT
#KERNCONF_OPTIONS+=		SCSI_NO_SENSE_STRINGS
#KERNCONF_OPTIONS+=		SCSI_NO_OP_STRINGS


# Debug definitions
##KERNCONF_MAKEOPTIONS+=	"DEBUG=-g"
KERNCONF_OPTIONS+=		DDB
KERNCONF_OPTIONS+=		KDB
KERNCONF_OPTIONS+=		PREEMPTION
##KERNCONF_OPTIONS+=		KTRACE
#KERNCONF_OPTIONS+=		LOCK_PROFILING
#KERNCONF_OPTIONS+=		KTR

# Board definitions
KERNCONF_OPTIONS+=	INET
KERNCONF_OPTIONS+= 	IPSTEALTH
KERNCONF_OPTIONS+= 	FFS
KERNCONF_OPTIONS+= 	SOFTUPDATES
KERNCONF_OPTIONS+= 	UFS_ACL
KERNCONF_OPTIONS+= 	UFS_DIRHASH
#KERNCONF_OPTIONS+= 	TMPFS
KERNCONF_OPTIONS+= 	CD9660
KERNCONF_OPTIONS+= 	GEOM_LABEL
KERNCONF_OPTIONS+= 	SCHED_ULE
#KERNCONF_OPTIONS+= 	SCHED_4BSD
#KERNCONF_OPTIONS+= 	NFSCLIENT
#KERNCONF_OPTIONS+= 	NFS_ROOT
KERNCONF_OPTIONS+= 	PSEUDOFS
KERNCONF_OPTIONS+=	_KPOSIX_PRIORITY_SCHEDULING

#KERNCONF_OPTIONS+= 	SMP

#KERNCONF_DEVICES+=	pci
KERNCONF_DEVICES+=	random
KERNCONF_DEVICES+=	loop
KERNCONF_DEVICES+=	pty
KERNCONF_DEVICES+=	ether
KERNCONF_DEVICES+=	bpf
KERNCONF_DEVICES+=	vlan
KERNCONF_DEVICES+=	uart
#KERNCONF_DEVICES+=	uart_ns8250
KERNCONF_DEVICES+=	tuntap

KERNCONF_DEVICES+=	gpio
KERNCONF_DEVICES+=	gpioled

KERNCONF_OPTIONS+= 	SC_PIXEL_MODE

KERNCONF_OPTIONS+= 	CAMDEBUG

KERNCONF_OPTIONS+=	SCSI_DELAY=1000

.if defined(WITH_IPSEC)
KERNCONF_OPTIONS+=         IPSEC

KERNCONF_DEVICES+=		enc
KERNCONF_DEVICES+=		ipsec
KERNCONF_DEVICES+=		crypto
.endif


#	sys/boot/uboot
#	sys/boot/arm/uboot

