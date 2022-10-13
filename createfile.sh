#/bin/bash
echo "Name of the file you want to create" 
read fileN 
touch $fileN 
function fileedit { 
    echo "Do you want to open file in editor (Yes[1] or No[2])" 
    read YN
    if [[ $YN = 1 ]];
    then 
    xdg-open $fileN
    
    elif [[ $YN = 2 ]];
    then echo "$fileN is created"
    
    else
    echo "Input is Wrong, Try again"
    fileedit 
    fi
    fileedit
}