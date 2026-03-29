pkg=~/pkg

dependency(){
	cd $pkg/p7zip
	which 7zr
	if [ ! $? -eq 0 ];then
		echo installing
		sudo dpkg -i p7zip_16.02+dfsg-8_arm64.deb
	fi

	cd $pkg/rsync
	pkgs=(
	"libgnutls30_3.7.9-2+deb12u6_arm64.deb"
	"libsodium23_1.0.18-1+deb12u1_arm64.deb"
	"openssl_3.0.18-1~deb12u2_arm64.deb"
	"libpng16-16_1.6.39-2+deb12u3_arm64.deb"
	"libssl3_3.0.18-1~deb12u2_arm64.deb"
	"rsync_3.2.7-1+deb12u4_arm64.deb"
	)

	which rsync
	if [ ! $? -eq 0 ];then
		echo installing
		for p in ${pkgs[@]};do
			sudo dpkg -i $p
		done
	fi
}

dependency
7zr x Home.7z
