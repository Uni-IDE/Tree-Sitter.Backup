. lib/var

chrome_shuttle(){
	mkdir -p $chromeshuttle/bac
	rsync -av --progress $home/$this $chromeshuttle/bac/
}

chrome_bac(){
	chrome_shuttle
}

chrome_bac

