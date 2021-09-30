for user in $(aws iam list-users |grep -i UserName|sed -e 's/.*: \"//' -e 's/\",//')                                                                                 ✔  3s   12:28:06 
echo USER: $user;
aws iam list-groups-for-user  --user-name $user --output text|awk {'print $5'}
