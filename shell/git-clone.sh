function clone () {
	repo=$1
	if ! [[ $repo == *"/"* ]]; then
		echo -e "\e[31mNeed user and repo name\e[30m"
		return
	fi
	components=(${(s:/:)repo})
	directoryname="${components[1]}"
	localpath="${HOME}/Developer/${directoryname}"
	echo "Create directory at: ${localpath}"
	if ! [ -d "$directoryname" ]; then
		/bin/mkdir -p "${localpath}"
	fi
	cd $localpath
	git clone git@github.com:$repo.git
	open .
}