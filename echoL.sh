#!/bin/bash  
echo  
echo "When single quote is used with string:"  
invitation='Welcome'  
echo $invitation  
echo  
echo "When double quote is used with string:"  
invitation="Welcome"  
echo $invitation  
echo  
echo "When variable is used with double quote:"  
Remark="Hello User!, $invitation"  
echo $Remark  
echo  
echo "When variable is used with single quote:"  
Remark='Hello User!, $invitation'  
echo $Remark  
echo 