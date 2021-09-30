#!/bin/bash
#install
clear
chmod 510 database.sh
chmod 510 productivity.sh
chmod 510 t1.sh
chmod +x custom_command.sh
touch tmpp.txt
pwd > tmpp.txt
cp tmpp.txt ~
echo "Do you have terminator (1 for Yes & 0 for No)? "
read ans
if [ $ans == 1 ]
then
  echo "#!/bin/bash" > bp.sh
  echo "cd \$(cat tmpp.txt)" >> bp.sh
  echo "terminator -T TIMER --command=./productivity.sh" >> bp.sh
  echo "cd ~" >> bp.sh
  chmod +x bp.sh
  cp bp.sh ~
fi
if [ $ans == 0 ]
then
  echo "#!/bin/bash" > bp.sh
  echo "cd \$(cat tmpp.txt)" >> bp.sh
  echo "gnome-terminal --command=./productivity.sh" >> bp.sh
  echo "cd ~" >> bp.sh
  chmod +x bp.sh
  cp bp.sh ~
fi
echo "Do you plan on using the Custom Command in Gnome-Terminal for Productivity App (1 for Yes & 0 for No) ? "
read c
if [ $c == 1 ]
then
  cp custom_command.sh ~
fi
path=$pwd
cd ~
export PATH="$PATH:$path"
exec bash
