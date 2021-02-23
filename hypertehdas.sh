#! /usr/bin/env bash

declare file_name=""

# WELCOME MESSAGE

echo " _   _                      _____    _         _"
echo "| | | |_   _ _ __   ___ _ _|_   _|__| |__   __| | __ _ ___ "
echo "| |_| | | | | '_ \ / _ \ '__|| |/ _ \ '_ \ / _\` |/ _\` / __|"
echo "|  _  | |_| | |_) |  __/ |   | |  __/ | | | (_| | (_| \__ \\"
echo "|_| |_|\__, | .__/ \___|_|   |_|\___|_| |_|\_,__|\__,_|___/"
echo "       |___/|_|                                            "
echo ""
echo "_____Sami_Tekce__________________github.com/msamitekce_____"
echo ""
echo ""
echo "- Enter a name to create a .html file:"
read file_name_input

file_name="$file_name_input.html"


# CSS function

function css_function ()
{
  	echo ""
	echo "## Do you want to add LINK CSS?(y/n)"
	read css_answer
	
	if [[ $css_answer == "y" ]]; then
		echo ""
		echo "-- How many CSS files do you want to add?"
		read css_amount
		declare -i conter=0
		while [[ $counter -lt $css_amount ]]
		do
		echo "--- Name of the $(($counter+1)). CSS file: "
		read css_name
		echo "<link rel=\"stylesheet\" href=\"$css_name.css\">" >> $file_name
		counter=$(($counter+1))
		done
	fi
	
}

# META function 

function meta_function ()
{

	echo ""
	echo "## Do you want to add META KEYWORDS?(y/n)"
	read meta_keywords_answer
	
	if [[ $meta_keywords_answer == "y" ]]; then
		echo ""
		echo "--- Write your META KEYWORDS (Seperate by comma (,)):"
		read meta_keywords_description
		echo "<meta name=\"keywords\" content=\"$meta_keywords_description\">" >> $file_name
	fi

	
	echo ""
	echo "## Do you want to add META DESCRIPTION?(y/n)"
	read meta_description_answer
	
	if [[ $meta_description_answer == "y" ]]; then
		echo ""
		echo "--- Write your META DESCRIPTION:"
		read meta_description_description
		echo "<meta name=\"description\" content=\"$meta_description_description\">" >> $file_name
	fi

	echo ""
	echo "## Do you want to add META AUTHOR?(y/n)"
	read meta_author_answer
	
	if [[ $meta_author_answer == "y" ]]; then
		echo ""
		echo "--- Write your META AUTHOR:"
		read meta_author_description
		echo "<meta name=\"author\" content=\"$meta_author_description\">" >> $file_name
	fi
}

# HEAD function

function head_function ()
{	
	echo "<head>" >> $file_name
	echo "<meta charset=\"utf-8\">" >> $file_name

	echo ""
	echo "---- Title of the page:"
	read site_title
	
	echo "<title>$site_title</title>" >> $file_name	
	
	echo ""
	echo "## Do you want to add META TAGS?(y/n)"
	read meta_answer

	if [[ $meta_answer == "y" ]]; then
		meta_function
	fi

	echo "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" >> $file_name

	css_function
		
	echo "</head>" >> $file_name
}

# Main HTML Script
# Scripts starts here

function html ()
{	
	echo "<html>" >> $file_name
  	echo ""
	echo "## Do you want to edit HEAD now?(y/n)"
	read head_answer

	if [ $head_answer == "y" ]; then
		head_function
	fi
	echo "<body></body>" >> $file_name
	echo "</html>" >> $file_name
}

html
echo ""
echo ""
echo "=== Ready to go $file_name ==="
