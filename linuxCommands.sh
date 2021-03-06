git pull
git add .
git commit -m "lab 10"
git push

unset https_proxy
unset http_proxy
env|grep -i proxy
vi .bashrc #is a shell script that Bash runs whenever it is started interactively. You can put any command in that file that you could type at the command prompt.


-------------------
wk12

docker build -t firstcontainer .
docker images

RUN pip install -r requirements.txt





-------------------
wk10

#!/bin/bash
cnt=`ls /tmp | wc -l`
maxnum=3
if [ $cnt -ge $maxnum ]; then
	echo "`date` Maximum numbers of files ($cnt) exceeded the parameter ($maxnum) in (/tmp) directory" >> /home/epa/epa-comp/wk10/log.txt
fi
--
crontab -e

*/1 * * * * /home/epa/epa-comp/wk10/tmpCnt.sh

crontab -r       To delete the entire Crontab


echo "`date` this goes to a file appending it" >> file.txt

cnt=9
echo "`date` $cnt files open" >> file.txt


-------------------
wk9

[epa@localhost wk9]$ mpstat -o JSON | jq '.sysstat.hosts[0].machine'
"x86_64"
[epa@localhost wk9]$ mpstat -o JSON | jq '.sysstat.hosts[0].statistics[0].timestamp'
"10:22:57"

[epa@localhost wk9]$ mpstat -o JSON | jq '.sysstat.hosts[0].statistics[0]."cpu-load"[0].idle'
86.44

[epa@localhost wk9]$ mpstat 10 1 -o JSON | jq '.sysstat.hosts[0].statistics[0]."cpu-load"[0].idle'
96.18

[epa@localhost wk9]$ mpstat 10 1 -o JSON | jq '100 - .sysstat.hosts[0].statistics[0]."cpu-load"[0].idle'
3.010000000000005

------------------------
wk8

#!/bin/bash
#./loadWrapperLoop.sh 300 3
for (( i = 0 ; i <= $1; i+=20 ))
do
./loadtest $i &
echo "Load of $i users"
sleep $2
cat /proc/loadavg >> mylogfile
pkill loadtest
done

--------------------------
#!/bin/bash
#./loadWrapper.sh 3 3
#to run as background process use &
~/epa-comp/wk8/loadtest $1 &
echo "Load Test Runing..."
pgrep loadtest
sleep $2
pkill loadtest
echo "end of test"
#pgrep loadtest
---------------------------
wk8
su -
rootpasswd
dnf install sysstat
dnf install gcc-c++

#compile this file using the command
g++ -fopenmp loadtest.C -o loadtest
./loadtest 3
#where N is the number of concurrent users from 0-100

#!/bin/bash
#./loadWrapper.sh 3 3
#to run as background process use &
~/epa-comp/wk8/loadtest $1 &
echo "Load Test Runing..."
pgrep loadtest
sleep $2
pkill loadtest
echo "end of test"
#pgrep loadtest

-----------------------
wk6

#crontab -e
#*/1 * * * * /home/epa/epa-comp/wk6/instance-check.sh i-033390d4b2e4fb049 >> /home/epa/epa-comp/wk6/script_output.log 2>&1
#*/1 * * * * /home/epa/epa-comp/wk6/instance-check.sh i-07bc96b8192810fe0 >> /home/epa/epa-comp/wk6/script_output.log 2>&1

--------------------------------

#!/bin/bash
value=`aws s3 ls s3://$1 |  wc -l`
echo $value "files found in bucket"

#aws s3 ls
#epa-lab-week7

aws s3 ls s3://epa-lab-week7 | wc -l


aws s3 ls

value=`aws ec2 describe-instance-status --instance-ids $1 | grep running |  wc -l`

crontab -e
*/1 * * * * /home/epa/epa-comp/wk6/instance-check.sh i-033390d4b2e4fb049 >> /home/epa/epa-comp/wk6/script_output.log

export EDITOR=vi ;to specify a editor to open crontab file.
crontab -e    Edit crontab file, or create one if it doesn’t already exist.
crontab -l    crontab list of cronjobs , display crontab file contents.
crontab -r    Remove your crontab file.
crontab -v    Display the last time you edited your crontab file. (This option is only available on a few systems.)








ctrl shift n --new terminal
ctrl o
ctrl x
ctrl d

#!/bin/bash
value=`grep processor /proc/cpuinfo | wc -l`
if [ $value -le $1 ]; then
echo "not enought"
else
echo "ok"
fi

value=`aws ec2 describe-instance-status --instance-ids $1 | grep running |  wc -l`
if [ $value -lt 1 ]; then
echo "no such instance running"
else
echo "the instance is running"
fi




Strings
if [ -n "$var" ]; then
  # Do something when var(string) is greater than zero. The length of STRING is greater than zero.
fi

if [ -z "$var" ]; then
  # Do something when var(string) is zero (ie it is empty). The lengh of STRING is zero (ie it is empty).
fi

if [ ! "$var" ]; then
  # Do something when The EXPRESSION is false.
fi

if [ "$string1" != "$string2" ] || [ "$string1" != "$string3" ]
if [ "$string1" != "$string2" -o "$string1" != "$string3" ]
if [[ "$string1" != "$string2" || "$string1" != "$string3" ]]

Integers
-eq numerically equal
-gt numerically greater than
-lt numerically less than

Files
#!/bin/bash
FILE="$1"
if [ -e ~/epa-comp/wk4/"$FILE" ]; then
    echo "File exists"
else
    echo "File does not exist"
fi

terminal$ ./script2.sh script.sh

~ 	The value of $HOME
~/foo   $HOME/foo
if [ -e $HOME/epa-comp/wk4/"$FILE" ]; then

-e 	FILE exists.
-d 	FILE exists and is a directory.
-s 	FILE exists and it's size is greater than zero (ie. it is not empty).

-r 	FILE exists and the read permission is granted.
-w 	FILE exists and the write permission is granted.
-x 	FILE exists and the execute permission is granted.

pwd, current working directory
cd, 
ls, 
mkdir, 
chmod, 
mv, $ mv script2.sh script3.sh
cp, 

more, Displays text, one screen at a time.
more +3 myfile.txt   Display the contents of file myfile.txt, beginning at line 3.
more +/"hope" myfile.txt	Display the contents of file myfile.txt, beginning at the first line containing the string "hope".
ls | more	List the contents of the current directory with ls, using more to display the list one screen at a time.
more +/"then" script3.sh

grep, Search for the given string in a single file
grep "then" script3.sh
grep "then" script*  	in multiple files
grep -i "H" script3.sh   ----ignore-case

wc, 
rmdir, remove a full directory
rm -r mydir    --to avoid Directory not empty

rm, Delete (remove) a file or files.
$HOME, home directory
$USER,
man grep  --help

cat filename                          # Lists the file.
cat file.1 file.2 file.3 > file.123   # Combines three files into one.



#!/bin/bash
cnt=`grep processor /proc/cpuinfo | wc -l`
if [ $cnt -lt 5 ] ;then
echo "too few CPUs, exiting"
fi


#!/bin/bash
# this is a CPU counting script
cpu=grep -o 'processor' /proc/cpuinfo | wc -l
if [ $cpu -lt 2 ]; then
  echo "Value too small".
exit 1
fi


git clone https://github.com/yyyura/epa-comp.git


git config --global user.name "yyyura"
git config --global user.email yyyura@gmail.com


hello world
privet mircat

myfile.txtepa@localhostepa@localhostepa@localhost

wk2
#!/bin/bash
a=879
echo "The value of \"a\" is $a."

if [ $val -gt 100 ]; then
  echo "Value too large".
fi


--
#!/bin/bash
a=879
echo "The value of \"a\" is $a."
if [ $a -gt 100 ]; then
  echo "Value too large".
fi
echo $USER $HOME
echo $1 $2 $3 
#positional parameters are the words following the name of a shell script
#$ ./loop.sh one two three
--

wk1
/proc/cpuinfo
cat--  to read the contents of files
grep-- command to search a file
history
!24
Ctrl R --search last commands 
tab complishion hit X 2 list of comands
cat > myfile.txt
hello world
ctrl Za+x 
cat >> myfile.txt

terminal just select -copy, then hit roller -paste


vim cpu_count.sh
i --insert

#!/bin/bash
#grep -c 'processor' /proc/cpuinfo
#cat /proc/cpuinfo
grep -o 'processor' /proc/cpuinfo | wc -l

esc :wq --write and quit
chmod a+x cpu_count.sh
./cpu_count.sh

man mkdir
mkdir wk1
cd wk1
ls
ls -l
ls -lF
chmod a+x myfile.txt

chmod -R 777 myfile.txt
./ myfile.sh

vi
cd ..
su -
rootpasswd $ --> #
Ctrl + d  # --> $

env|grep -i proxy

unset HTTP_PROXY
unset HTTPS_PROXY
unset https_proxy
unset http_proxy

yum sands for "Yellowdog Updater Modified"

dnf install vim
dnf -y install vim-enhanced

vim
esc
:wq Enter


bash if tests
Operator	Description
! EXPRESSION	The EXPRESSION is false.
-n STRING	The length of STRING is greater than zero.
-z STRING	The lengh of STRING is zero (ie it is empty).
STRING1 = STRING2	STRING1 is equal to STRING2
STRING1 != STRING2	STRING1 is not equal to STRING2
INTEGER1 -eq INTEGER2	INTEGER1 is numerically equal to INTEGER2
INTEGER1 -gt INTEGER2	INTEGER1 is numerically greater than INTEGER2
INTEGER1 -lt INTEGER2	INTEGER1 is numerically less than INTEGER2
-d FILE	FILE exists and is a directory.
-e FILE	FILE exists.
-r FILE	FILE exists and the read permission is granted.
-s FILE	FILE exists and it's size is greater than zero (ie. it is not empty).
-w FILE	FILE exists and the write permission is granted.
-x FILE	FILE exists and the execute permission is granted.

