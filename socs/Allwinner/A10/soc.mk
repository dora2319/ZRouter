
#XXX testing
KERNEL_PATH=/usr/obj/kernel

TARGET=			arm
TARGET_ARCH=		armv7

KERNCONF_MACHINE=	${TARGET} ${TARGET_ARCH}
KERNCONF_IDENT?=	A10
KERNCONF_CPU+= 		CPU_CORTEXA
KERNCONF_FILES+=	"../allwinner/files.allwinner"
KERNCONF_FILES+=	"../allwinner/files.allwinner_up"
KERNCONF_FILES+=	"../allwinner/a10/files.a10"
KERNCONF_MAKEOPTIONS+=	"CONF_CFLAGS=-march=armv7a"

KERNCONF_MAKEOPTIONS+=	"KERNPHYSADDR=0x40200000"
KERNCONF_MAKEOPTIONS+=	"KERNVIRTADDR=0xc0200000"

KERNCONF_OPTIONS+=	PHYSADDR=0x40200000
KERNCONF_OPTIONS+=	KERNVIRTADDR=0xc0200000

PHYSADDR=		0x40000000
KERNEL_HAS_BUILDID=	1

#KERNCONF_OPTIONS+=	COMPAT_FREEBSD10
#KERNCONF_OPTIONS+=	COMPAT_FREEBSD11

#KERNCONF_OPTIONS+=	SOCDEV_PA=0x01C00000
#KERNCONF_OPTIONS+=	SOCDEV_VA=0xf1C00000
#KERNCONF_OPTIONS+=	EARLY_PRINTF

#KERNCONF_OPTIONS+=	FLASHADDR=0x50000000
#KERNCONF_OPTIONS+=	LOADERRAMADDR=0x00000000
#KERNCONF_OPTIONS+=	STARTUP_PAGETABLE_ADDR=0x00000000

#KERNCONF_OPTIONS+=	LINUX_BOOT_ABI

KERNCONF_OPTIONS+=	FDT
KERNCONF_OPTIONS+=	FDT_DTB_STATIC
#KERNCONF_MAKEOPTIONS+=	"FDT_DTS_FILE=wzr2-g300n.dts"

KERNCONF_OPTIONS+=	INTRNG
KERNCONF_OPTIONS+=	VFP

#KERNCONF_OPTIONS+= 	HWPMC_HOOKS
KERNCONF_OPTIONS+= 	VERBOSE_INIT_ARM
#KERNCONF_OPTIONS+= 	IXP4XX_FLASH_SIZE=0x00400000
#KERNCONF_OPTIONS+= 	ATA_CAM
#KERNCONF_OPTIONS+= 	ATA_STATIC_ID
#KERNCONF_OPTIONS+= 	USB_EHCI_BIG_ENDIAN_DESC
#KERNCONF_OPTIONS+=	NO_EVENTTIMERS

KERNCONF_OPTIONS+=		MAXUSERS=3
KERNCONF_OPTIONS+=		MAXFILES=512
KERNCONF_OPTIONS+=		NSFBUFS=1024
KERNCONF_OPTIONS+=		SHMALL=128
KERNCONF_OPTIONS+=		MSGBUF_SIZE=65536

# Options for making kernel smallest 
KERNCONF_OPTIONS+=		NO_SYSCTL_DESCR
KERNCONF_OPTIONS+=		NO_FFS_SNAPSHOT
KERNCONF_OPTIONS+=		SCSI_NO_SENSE_STRINGS
KERNCONF_OPTIONS+=		SCSI_NO_OP_STRINGS


# Debug definitions
##KERNCONF_MAKEOPTIONS+=	"DEBUG=-g"
KERNCONF_OPTIONS+=		DDB
KERNCONF_OPTIONS+=		KDB
#KERNCONF_OPTIONS+=		PREEMPTION
##KERNCONF_OPTIONS+=		KTRACE
#KERNCONF_OPTIONS+=		LOCK_PROFILING
#KERNCONF_OPTIONS+=		KTR

# Board definitions
KERNCONF_OPTIONS+=	INET
KERNCONF_OPTIONS+= 	IPSTEALTH
#KERNCONF_OPTIONS+= 	FFS
#KERNCONF_OPTIONS+= 	SOFTUPDATES
#KERNCONF_OPTIONS+= 	UFS_ACL
#KERNCONF_OPTIONS+= 	UFS_DIRHASH
#KERNCONF_OPTIONS+= 	TMPFS
KERNCONF_OPTIONS+= 	CD9660
#KERNCONF_OPTIONS+= 	GEOM_LABEL
#KERNCONF_OPTIONS+= 	SCHED_ULE
KERNCONF_OPTIONS+= 	SCHED_4BSD
#KERNCONF_OPTIONS+= 	NFSCLIENT
#KERNCONF_OPTIONS+= 	NFS_ROOT
KERNCONF_OPTIONS+= 	PSEUDOFS
KERNCONF_OPTIONS+=	_KPOSIX_PRIORITY_SCHEDULING

KERNCONF_OPTIONS+= 	SOC_ALLWINNER_A10

#KERNCONF_OPTIONS+= 	SMP
KERNCONF_OPTIONS+= 	PLATFORM

#KERNCONF_DEVICES+=	pci
KERNCONF_DEVICES+=	loop
KERNCONF_DEVICES+=	pty
KERNCONF_DEVICES+=	ether
KERNCONF_DEVICES+=	bpf
KERNCONF_DEVICES+=	uart
KERNCONF_DEVICES+=	uart_ns8250
KERNCONF_DEVICES+=	uart_snps

#KERNCONF_DEVICES+=	tuntap
#KERNCONF_DEVICES+=	vlan

KERNCONF_DEVICES+=	gic

KERNCONF_OPTIONS+= 	EXT_RESOURCES
KERNCONF_DEVICES+=	clk
KERNCONF_DEVICES+=	phy
KERNCONF_DEVICES+=	hwreset
KERNCONF_DEVICES+=	nvmem
KERNCONF_DEVICES+=	regulator
KERNCONF_DEVICES+=	syscon

KERNCONF_DEVICES+=	gpio
KERNCONF_DEVICES+=	gpioled
KERNCONF_DEVICES+=	fdt_pinctrl

#KERNCONF_OPTIONS+= 	SC_PIXEL_MODE

KERNCONF_OPTIONS+= 	CAMDEBUG

KERNCONF_OPTIONS+=	SCSI_DELAY=1000

KERNCONF_DEVICES+=	usb
KERNCONF_DEVICES+=	ohci
KERNCONF_DEVICES+=	ehci

KERNCONF_DEVICES+=	emac
KERNCONF_DEVICES+=	miibus

KERNCONF_DEVICES+=	mmc
KERNCONF_DEVICES+=	mmcsd

KERNCONF_DEVICES+=	twsi
KERNCONF_DEVICES+=	iicbus
KERNCONF_DEVICES+=	iic

KERNCONF_DEVICES+=	aw_wdog
KERNCONF_DEVICES+=	aw_sid
KERNCONF_DEVICES+=	aw_thermal
KERNCONF_DEVICES+=	aw_rtc

KERNCONF_DEVICES+=	a10_dmac

KERNCONF_DEVICES+=	hdmi
KERNCONF_DEVICES+=	vt
KERNCONF_DEVICES+=	videomode
KERNCONF_DEVICES+=	sound

.if defined(WITH_IPSEC)
KERNCONF_OPTIONS+=         IPSEC

KERNCONF_DEVICES+=		enc
KERNCONF_DEVICES+=		ipsec
KERNCONF_DEVICES+=		crypto
.endif


#	sys/boot/uboot
#	sys/boot/arm/uboot

