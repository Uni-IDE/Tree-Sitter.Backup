. lib/var

dirs=(".cargo" ".local/share" ".local/state")


make_dir(){
	for d in ${dirs[@]}; do
		mkdir -p $data/$d
	done
}

sync_dir_to(){
	for d in ${dirs[@]}; do
		rsync -av --progress --delete ~/$d $data/`dirname $d`
	done
}

sync_profile_to(){
	rsync -av ~/.profile $data/
}

sync_backup(){
	make_dir_to
	sync_dir_to
	sync_profile
}

