. lib/var
. lib/compress.sh

chrome_shuttle(){
	mkdir -p $chromeshuttle/bac
	rsync -av --progress $home/$this.$compress_type $chromeshuttle/bac/
}

chrome_bac(){
	compress
	chrome_shuttle
}

chrome_bac

