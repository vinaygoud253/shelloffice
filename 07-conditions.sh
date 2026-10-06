number=10
if [ $number -gt 5 ]; then
    echo "The number is greater than 5."
else
    echo "The $number is not greater than 5."
fi

if [ $number -eq 10 ]; then
    echo "The $number is equal to 10."
else
    echo "The $number is not equal to 10."
fi

if [ $number -lt 20 ]; then
    echo "The $number is less than 20."
else
    echo "The $number is not less than 20."
fi

if [ $number -ne 15 ]; then
    echo "The $number is not equal to 15."
else
    echo "The $number is equal to 15."
fi

