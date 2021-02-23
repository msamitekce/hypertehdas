#! /usr/bin/env bash

declare file_name=""

# WELCOME MESSAGE

echo "***Welcome to HTLM Navigator Script***"
echo ""
echo "Enter a file name to create"
read file_name_input

file_name="$file_name_input.html"


# CSS function

function css_function ()
{
  	echo ""
	echo "Do you want to add LINK CSS?(y/n) (styles.css)"
	read css_answer
	
	if [[ $css_answer == "y" ]]; then
		echo "<link rel=\"stylesheet\" href=\"styles.css\">" >> $file_name
	fi
	
}

# META function 

function meta_function ()
{

	echo ""
	echo "Do you want to add META KEYWORDS?(y/n)"
	read meta_keywords_answer
	
	if [[ $meta_keywords_answer == "y" ]]; then
		echo ""
		echo "Write your META KEYWORDS (Seperate by comma (,)):"
		read meta_keywords_description
		echo "<meta name=\"keywords\" content=\"$meta_keywords_description\">" >> $file_name
	fi

	
	echo ""
	echo "Do you want to add META DESCRIPTION?(y/n)"
	read meta_description_answer
	
	if [[ $meta_description_answer == "y" ]]; then
		echo ""
		echo "Write your META DESCRIPTION:"
		read meta_description_description
		echo "<meta name=\"description\" content=\"$meta_description_description\">" >> $file_name
	fi

	echo ""
	echo "Do you want to add META AUTHOR?(y/n)"
	read meta_author_answer
	
	if [[ $meta_author_answer == "y" ]]; then
		echo ""
		echo "Write your META AUTHOR:"
		read meta_author_description
		echo "<meta name=\"author\" content=\"$meta_author_description\">" >> $file_name
	fi
}

# HEAD function

function head_function ()
{	
	echo "<head>" >> $file_name
	echo "<meta charset=\"utf-8\">" >> $file_name
	
	echo "Title of the page:"
	read site_title
	
	echo "<title>$site_title</title>" >> $file_name	
	
	echo "Do you want to add META TAGS?(y/n)"
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
	echo "Creting file..."
	echo "<html>" >> $file_name
  
	echo "Do you want to edit HEAD now?(y/n)"
	read head_answer

	if [ $head_answer == "y" ]; then
		head_function
	fi

	echo "</html>" >> $file_name
}

html

echo "Ready to go"
