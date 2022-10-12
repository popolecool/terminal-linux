
PS1='\e[1;92mrpi-popo@popo \w\[\e[0;m\]'

clear
echo -e "Created By \e[5mpopo le cool"
echo "----------------------------" | lolcat
echo -e "\e[1mGoogle:popolecool"
echo -e "\e[1mGithub: github.com/popolecool/"
echo "----------------------------" | lolcat
echo "
+-+-+-+-+-+-+-+
|W|e|l|c|o|m|e|
+-+-+-+-+-+-+-+ " | lolcat
date | lolcat
echo ""

# if the command-not-found package is installed, use it
if [ -x /usr/lib/command-not-found -o -x /usr/share/command-not-found/command-not-found ]; then
	function command_not_found_handle {
	        # check because c-n-f could've been removed in the meantime
                if [ -x /usr/lib/command-not-found ]; then
		   /usr/lib/command-not-found -- "$1"
                   return $?
                elif [ -x /usr/share/command-not-found/command-not-found ]; then
		   /usr/share/command-not-found/command-not-found -- "$1"
                   return $?
		else
		   printf "%s: command not found\n" "$1" >&2
		   return 127
		fi
	}
fi
