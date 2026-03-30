. lib/var

dirs=(".cargo" ".local/share" ".local/state")


make_dir(){
	for d in ${dirs[@]}; do
		mkdir -p $to/$d
	done
}

sync_dir(){
	for d in ${dirs[@]}; do
		rsync -av --progress --delete $from/$d $to/`dirname $d`
	done
}

sync_profile(){
	rsync -av $from/.profile $to/
}

backup_sync(){
	from=~
       	to="$data"

	make_dir
	sync_dir
	sync_profile
}

restore_sync(){
	from=$data
	to=~

	make_dir
	sync_dir
	sync_profile
}

