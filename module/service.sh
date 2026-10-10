#!/system/bin/sh
MODDIR="$(dirname "$(readlink -f "$0")")"
export MODDIR
. "$MODDIR/utils.sh"

run() {
	until [ "$(getprop sys.boot_completed)" = 1 ]; do sleep 1; done
	until [ -d "/sdcard/Android" ]; do sleep 1; done

	for i in $(seq 1 60); do
		BASEPATH=$(get_basepath)
		SVCL=$?
		if [ $SVCL = 0 ]; then
			if mount_rv "$BASEPATH"; then
				return 0
			fi
		fi
		if [ $SVCL != 20 ] && [ $SVCL != 0 ]; then
			ch_desc_err "App not installed: '$PKG_NAME'"
			return 1
		fi
		sleep 2
	done

	ch_desc_err "Mount retry timeout for '$PKG_NAME'"
	return 1
}

if [ ! -f "$MODDIR/disabled_by_action" ]; then
	run
fi
