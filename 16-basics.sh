# echo "hello vinay u can do it"
# name1="vinay"
# name2="kumar"
# # conversation between two names

# echo "Hello $name1, how are you?"
# echo "Hello $name2, I'm doing well. How about you?"
# echo "I'm good too, thanks for asking!"
# echo "What are you up to these days?"
# echo "Just working on some projects. How about you?"
# echo "Same here, keeping busy with work and learning new things."


# if [ "$name1" == "$name2" ]; then
#     echo "Names are the same."
# else
#     echo "Names are different."
# fi

user_id=$(id -u)
echo "User ID: $user_id"
if [ "$user_id" -eq 0 ]; then
    echo "You are running this script as root."
else
    echo "You are not running this script as root."
fi