. lib/var

dirs=(".cargo" ".local/share" ".local/state")


make_dir(){
	for d in ${dirs[@]}; do
		mkdir -p $data/$d
	done
}

sync_dir(){
	for d in ${dirs[@]}; do
		rsync -av --progress --delete ~/$d $data/`dirname $d`
	done
}

sync_profile(){
	rsync -av ~/.profile $data/
}

syncf(){
	make_dir
	sync_dir
	sync_profile
}

syncf
