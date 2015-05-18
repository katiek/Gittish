# echo "What is your name?"
# read their_name
# echo "Hi $their_name"


# echo "$git_clone $URL"
# alias git_copy="$git_clone $URL"

function git_copy {
	echo "Which repository would you like to copy? Type or paste the URL found on the lower right side of the repository's github page."
	read URL
	git clone $URL
}

function git_status {
	git status
}

function git_add {
	echo "Do not store large media files i.e. audio, video, picture etc. Currently, are there any of these files in the repository folder? Answer Yes or No"
	read answer
	if [ $answer = "Yes" ]; then 
		echo "Remove large files and rerun git_add!"
	elif [ $answer = "No" ]; then 
		git_add .	
	else
		echo "You typed $answer. Only write Yes or No to answer question. Case sensitive Yes or No."	
	fi
}

# function git_copy {
# 	echo "Which repository would you like to copy? Type the URL found on the lower right side of the repository's github page."
# 	read URL
# 	git clone $URL
# }

# function git_copy {
# 	echo "Which repository would you like to copy? Type the URL found on the lower right side of the repository's github page."
# 	read URL
# 	git clone $URL
# }



# command ? will put code into note form
# gittish custumized terminal page