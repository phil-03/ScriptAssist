#Philip B.
#Simple script welcome screen for terminal
#Added to file: .bash_profile in home directory
# font color : Bold blue
function title {
   echo -ne "\033]0;"$*"\007"
}
color='\033[1;34m'

# font color : white
BC='\033[0;32m'

# To extract ones digit of second from system clock
a=`date|cut -c 19`
#add animation later
# Array that all the quotes
var=("Mark 8:36 - For what shall it profit a man, if he shall gain the whole world, and lose his own soul?." "
\n \t\t\t\t\t\t\t- 1 Corinthians 10:31 " " Whether therefore ye eat, or drink, or whatsoever ye do, do all to the glory of God..
\n \t\t\t\t\t\t\t- 1 John 1:9" "If we confess our sins, he is faithful and just to forgive us our sins, and to cleanse us from all unrighteousness.
\n \t\t\t\t\t\t\t- 1 John 3:22" "And whatsoever we ask, we receive of him, because we keep his commandments, and do those things that are pleasing in his sight.
\n \t\t\t\t\t\t\t- 1 Peter 5:8" "Be sober, be vigilant; because your adversary the devil, as a roaring lion, walketh about, seeking whom he may devour
\n \t\t\t\t\t\t\t- 2 Corinthians 12:9" "And he said unto me,My grace is sufficient for thee: for my strength is made perfect in weakness. Most gladly therefore will I rather glory in my infirmities, that the power of Christ may rest upon me.
\n \t\t\t\t\t\t\t- 2 Timothy 1:12" "For the which cause I also suffer these things: nevertheless I am not ashamed: for I know whom I have believed, and am persuaded that he is able to keep that which I have committed unto him against that day.
\n \t\t\t\t\t\t\t- 2 Timothy 2:15" "Study to shew thyself approved unto God, a workman that needeth not to be ashamed, rightly dividing the word of truth.
\n \t\t\t\t\t\t\t- 2 Timothy 3:16" "All scripture is given by inspiration of God, and is profitable for doctrine, for reproof, for correction, for instruction in righteousness
\n \t\t\t\t\t\t\t- John 3:16" "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life.
\n \t\t\t\t\t\t\t- Proverbs 3:5-6" "Trust in the LORD with all thine heart; and lean not unto thine own understanding. 6 In all thy ways acknowledge him, and he shall direct thy paths.
\n \t\t\t\t\t\t\t- Galatians 6:9 Let us not become weary in doing good, for at the proper time we will reap a harvest if we do not give up." )

# Welcome message ! Edit it with your name
COLUMNS=$(tput cols)
tmp1="====================            Welcome back Phil!             ===================="
#echo $tmp1
printf "%*s\n" $(((${#tmp1}+$COLUMNS)/2)) "$tmp1"
printf "%*s\n" $(((${#var}+$COLUMNS)/2)) "$var"
#  "\n${var[$a]}"
printf $(((${#tmp1}+$COLUMNS)/2)) "--------------------------------------------------------------------------------${BC}"
working_directory() {
    dir=`pwd`
    in_home=0
    if [[ `pwd` =~ ^$HOME($|\/) ]]; then
        dir="~${dir#$HOME}"
        in_home=1
    fi

    if [[ `tput cols` -lt 110 ]]; then  # <-- Checking the term width
        first="/`echo $dir | cut -d / -f 2`"
        letter=${first:0:2}
        if [[ $in_home == 1 ]]; then
            letter="~$letter"
        fi
        proj=`echo $dir | cut -d / -f 3`
        beginning="$letter/$proj"
        end=`echo "$dir" | rev | cut -d / -f1 | rev`

        if [[ $proj == "" ]]; then
            echo $dir
        elif [[ $proj == "~" ]]; then
            echo $dir
        elif [[ $dir =~ "$first/$proj"$ ]]; then
            echo $beginning
        elif [[ $dir =~ "$first/$proj/$end"$ ]]; then
            echo "$beginning/$end"
        else
            echo "$beginning/…/$end"
        fi
    else
        echo $dir
    fi
}

prompt() {
    if [[ $? -eq 0 ]]; then
        exit_status='\[\e[0;34m\]› \[\e[00m\]'
    else
        exit_status='\[\e[0;31m\]› \[\e[00m\]'
    fi

    prompt='\[\e[0;33m\]$(working_directory)\[\e[00m\]\[\e[0;32m\]'
    PS1=$prompt$exit_status
}
PROMPT_COMMAND=prompt
