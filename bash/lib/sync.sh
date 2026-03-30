. lib/var

dirs=(".cargo" ".local/share" ".local/state")


make_bac_dir(){
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
	make_bac_dir
	sync_dir_to
	sync_profile_to
}

sync_restore(){
	make_restore_dir
	sync_dir_from
	sync_profile_from
}

