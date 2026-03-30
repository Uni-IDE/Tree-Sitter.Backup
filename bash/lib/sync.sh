this=~/
data=$this/Tree-Sitter.Backup/data

dirs=(".cargo" ".local/share" ".local/state")

for $d in ${dirs[@]}; do
	mkdir -p $data/$d
done

