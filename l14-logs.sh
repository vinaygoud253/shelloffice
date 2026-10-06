userid=$(id -u)

logs_folder="/var/log/shell-scripts"
logs_file="$logs_folder/$0.log"

if [ "$userid" -ne 0 ]; then
    echo "This script must be run as root. Please run with sudo or as root user."
    exit 1
fi

mkdir -p "$logs_folder"

validate(){
    if [ $1 -eq 0 ]; then
        echo "$2 installation completed successfully." | tee -a "$logs_file"
    else
        echo "$2 installation failed. Please check the error messages above." | tee -a "$logs_file"
        exit 1
    fi
}

dnf install nginx -y &>>"$logs_file" | tee -a "$logs_file"
    
validate $? "Nginx"

dnf install mysql -y &>>"$logs_file" | tee -a "$logs_file"

validate $? "MySQL"

dnf install nodejs -y &>>"$logs_file" | tee -a "$logs_file"

validate $? "Node.js"   