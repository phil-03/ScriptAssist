#Philip B.
#Simple script welcome screen for terminal
# font color : Bold blue
color='\033[1;34m'

# font color : green
BC='\033[0;32m'

# To extract ones digit of second from system clock
a=`date|cut -c 19`
#add animation later
# Array that all the quotes
var=(" -1 Corinthians 10:13 -- There hath no temptation taken you but such as is common to man: but God is faithful, who will not suffer you to be tempted above that ye are able; but will with the temptation also make a way to escape, that ye may be able to bear it.
\n \t\t\t\t\t\t\t-1 Corinthians 10:31 " " Whether therefore ye eat, or drink, or whatsoever ye do, do all to the glory of God..
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

echo -e "${color}--------------------------------------------------------------------------------"
echo "****************             Welcome back Phil!             *****************"
echo -e "\n${var[$a]}"
echo -e "--------------------------------------------------------------------------------${BC}"

#end of code
