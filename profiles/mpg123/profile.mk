
WORLD_SUBDIRS_PORTS+=${ZROUTER_ROOT}/ports/audio/mpg123

KERNCONF_MODULES_OVERRIDE+=sound/driver/uaudio sound/sound

WORLD_SUBDIRS_USR_SBIN+=mixer