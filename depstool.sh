#!/bin/sh 

case ${1} in
"clean")
	echo "rm -rf ./build  ./deps"
	rm -rf ./build  ./deps
	;;

"run")
	echo "mkdir ./build"
	mkdir ./build
	cd ./build
	cmake .. 
	make
	;;
*)
	echo "no surpport cmd $1"
	;;
esac

