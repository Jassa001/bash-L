#!/bin/bash
read -p "Select Class (u for user)(g for the group)(o for the other)(a for all the classes): " class
read -p "(+) for adding permission and (-) for subsitituing permision: " opreator
read -p "Select permission (r for read)(w for modifing)(x for executing): " permission
read -p "Enter file name to change permission: " filename
chmod $class$opreator$permission $filename

<<com
Let’s say you want to give yourself read permission
 and no permission to anybody else. 
 You want to specify just the bit 
 represented by the number 400. 
 So the chmod command would be:'''
com
#chmod 400 filename

<<com
To give read permission to everybody,
 choose the correct bit from each level:
  400 for yourself, 40 for your group,
   and 4 for other. The full command is:
com
#chmod 444 fileman

<<com
To give read and execute permission to everybody,
 you have to add up the read and execute bits.
  400 plus 100 is 500, for instance.
  So the corresponding command is:
com
  #chmod 555 filename

<<com The 027 umask setting means that the owning group
 would be allowed to read the newly-created files
  as well.
com
#unmask 027 filename
