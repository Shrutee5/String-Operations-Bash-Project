#!/bin/bash

#check if a string is palindrome
Palindrome() {
	local input="$1"
	lower_str=$(echo "$input" | tr '[:upper:]' '[:lower:]')
	rev_str=$(echo "$lower_str" | rev)
	echo "Reversed string : $rev_str"
	if [ "$lower_str" == "$rev_str" ]; then
		echo "The string $input is palindrome."
	else
		echo "The string $input is not palindrome."
	fi
}

# find the length of a string
StringLength() {
	local input="$1"
	str_len=${#input}
	echo "Length of the string is : $str_len"
}

# append a string to the current string
AppendString() {
	local cur_str="$1"
	echo "Enter the string to append : "
	read a_str
	new_str="$cur_str$a_str"
	echo "New string : $new_str"
}

# convert a string to uppercase
UpperCase() {
	local input="$1"
	u_case=$(echo "$input" | tr '[:lower:]' '[:upper:]')
	echo "String in uppercase : $u_case"
}

# covert a string to lowercase
LowerCase() {
	local input="$1"
	l_case=$(echo "$input" | tr '[:upper:]' '[:lower:]')
	echo "String in lowercase : $l_case"
}

# extract a substring
ExtractSubstring() {
	local input="$1"
	echo "Enter the starting index : "
	read s_index
	echo "Enter the length : "
	read length
	substr="${input:$s_index:$length}"
	echo "Substring : $substr"
}

# replace a substring
replaceSubstr() {
	local input="$1"
	echo "Enter the substring to replace : "
	read subStr
	echo "Enter new substring : "
	read replace
	newStr="${input//$subStr/$replace}"
	echo "New String : $newStr"
}

while true; do
# display Menu
echo "Choose an option : "
echo "1. Check for palindrome"
echo "2. Find the length of a string"
echo "3. Append a string"
echo "4. Convert to uppercase"
echo "5. Convert to lowercase"
echo "6. Extract substring"
echo "7. Replace substring"
echo "8. Exit"
read choice

case $choice in
	1) 
		echo "Enter a string : "
		read str
		Palindrome "$str"
		;;
	2)
		echo "Enter a string : "
		read str
		StringLength "$str"
		;;
	3)
		echo "Enter a string : "
		read str
		AppendString "$str"
		;;
	4)
		echo "Enter a string : "
		read str
		UpperCase "$str"
		;;
	5)
		echo "Enter a string : "
		read str
		LowerCase "$str"
		;;
	6)
		echo "Enter a string : "
		read str
		ExtractSubstring "$str"
		;;
	7)
		echo "Enter a string : "
		read str
		replaceSubstr "$str"
		;;
	8)
		echo "Existing..."
		exit 0
		;;
	*)
		echo "Invalid choice"
		;;
esac
done

