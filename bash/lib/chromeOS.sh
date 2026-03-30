. lib/var

chrome_shuttle(){
	# https://unix.stackexchange.com/questions/102211/rsync-ignore-owner-group-time-and-perms
	mkdir -p $chromeshuttle/bac
	rsync -av --delete --no-perms --no-owner --no-group --progress $home/$this.$compress_type $chromeshuttle/bac/
}

chrome_bac(){
	chrome_shuttle
}

chrome_bac

