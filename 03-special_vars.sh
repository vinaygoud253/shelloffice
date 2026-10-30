# #!/bin/bash
# echo "All variables in this script are: $@"
# echo "The name of this script is: $0"
# echo "The first argument passed to this script is: $1"
# echo "The second argument passed to this script is: $2"
# echo "The process ID of this script is: $$"
# echo "The exit status of the last command is: $?"
# echo "The number of arguments passed to this script is: $#"
# echo "The name of the user running this script is: $USER"
# echo "the present directory is: $PWD"
# sleep 100 &
# echo "The process ID of the last background command is: $!"
# echo "The all arguments passed to this script as a single string is: $*"
fruits = ("apple","banana","cherry")
echo "The first fruit is: ${fruits[0]}" 
echo "All fruits are: ${fruits[@]}"