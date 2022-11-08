echo "1.Дата: #date"
date

echo -e "\n2.Поточна директорія: pwd"
pwd

echo -e "\n3.Поточний користувач"
username=`whoami`
echo $username

echo -e "\n4.UID/GID: id -u  username / id -g  username"
echo "UID:" 
id -u  $username
echo "GID:" 
id -g  $username

echo -e "\n5.Ім'я хоста: hostname"
hostname

echo -e "\n6.Інформацію про версію системи: lsb_release -a"
lsb_release -a

echo -e "\n7.Зайнятий простір на дисках в GB: df -h"
df -h

echo -e "\n8.Зайнятий простір на дисках в GB "/" (корінної директорії): df -h /"
df -h /

echo -e "\n9.Розмір поточної директорії в "human-readable" виді з глубиною вкладання 1 папка: du -hd 1"
du -hd 1

echo -e "\n10.Вміст поточної директорії у вигляді детального списку: ls -la"
ls -la

echo -e "\n11.Список усіх мережевих інтерфейсів: ipconfig"
ifconfig -a

echo -e "\n12.Окремою командою вивести IP адресу інтерфейсу eth0 або enp0s3: ip -4 addr show dev enp0s3"
ip -4 addr show dev enp0s3

echo -e "\n13.Список слухаючих TCP портів без перетворення імен на адреси та з відображенням PID/program name: netstat -plut | grep LISTEN"
sudo netstat -plut | grep LISTEN

echo -e "\n14.Вивести список груп, до яких належить користувач: id -Gn"
id -Gn

echo -e "\n15.Вивести список користувачів з вибіркою лише свого імені: sed 's/:.*//' /etc/passwd | grep masters-academy"
sed 's/:.*//' /etc/passwd | grep masters-academy

echo -e "\n16.Перевірити чи маєте ви Docker та його версію: dpkg -l | grep docker"
dpkg -l | grep docker