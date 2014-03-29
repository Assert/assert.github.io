#!/bin/sh




if [ "$1" == "" ]; then

	echo "You need to add a message for the commit to GitHub"
	echo ">publish 'New blog post about MarkDown'"

else


	echo "Building site with Jekyll"

	jekyll serve

	echo "Pushing to Git"

	git add --all
	git commit -m $0
	git push origin master
fi


