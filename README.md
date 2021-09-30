# BASH_PRODUCTIVITY_APP
## PRODUCTIVITY APP DESIGNED WITH BASH FOR LINUX USERS.


# INSTALL

1) cd ~
2) $ git clone 
3) $ cd BASH_PRODUCTIVITY_APP/
4) $ chmod +x install.sh 
5) $ ./install.sh


# FEATURES

* BLOCK DISTRACTING WEBSITE
* SET YOUR TARGET PRODUCTIVE HOURS
* NOTIFICATIONS
* BUILT IN TIMER
* YOUR ACCOUNTABILITY PATNER
* WEEKLY LOGS

# USAGE INSTRUCTION
$ ./bp.sh 

The above command from your "HOME" directory will start the Productivity APP.

After the installation process is complete there will be two or three files namely "bp.sh" , "custom_command.sh" and "tmpp.txt" in your home directory and those files are necessary for the proper functioning of the APP. 
DURING INSTALL PROCESS YOU WILL BE ASKED IF YOU WANT TO ADD CUSTOM COMMAND IN GNOME-TERMINAL AND IF YOU AGREED THEN "custom_command.sh" WILL BE COPIED TO THE PARENT DIRECTORY BY THE SCRIPT AND YOU JUST HAVE TO ADD IT IN THE PREFERENCES AS SHOWN IN THE SCREENSHOT BELOW.

You can lauch the app in the Gnome-terminal from the Home directory by using the following command "$ bp.sh" and for that you have to do the following:
ADD THE "./custom_command.sh" TO THE CUSTOM COMMAND BOX, WHICH CAN BE ACCESSED FROM EDIT>PREFERENCES
![alt tag](https://user-images.githubusercontent.com/85397632/127916720-9fcabe99-4c67-496e-a11d-e2918cfa2200.png "INSTEAD OF ./custom_cmd.sh IT WILL BE ./custom_command.sh")

"INSTEAD OF ./custom_cmd.sh" IT WILL BE "./custom_command.sh"

If you use other terminal emulators like "Terminator" then you can add "./custom_command.sh" to it's preferance section's custom command box, otherwise ADDING "export PATH=$PATH:/your/folder/here" TO ~/.bashrc WILL DO THE TRICK.


# FUTURE PLANS
* ENCRYPT SOME FILES I USE TO CREATE PERSISTENCE SO THAT IT CAN'T BE MODIFIED
* ADD OPTION FOR AMBIENT NOISE
* ADD SOME STARTING ANIMATION
