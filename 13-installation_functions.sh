userid=$(id -u)
if [ "$userid" -ne 0 ]; then
    echo "This script must be run as root. Please run with sudo or as root user."
    exit 1
fi  


validate(){
    if [ $1 -eq 0 ]; then
        echo "$2 installation completed successfully."
    else
        echo "$2 installation failed. Please check the error messages above."
        exit 1
    fi
}

dnf install nginx -y
    
validate $? "Nginx"

dnf install mysql -y

validate $? "MySQL"

dnf install nodejs -y

validate $? "Node.js"   