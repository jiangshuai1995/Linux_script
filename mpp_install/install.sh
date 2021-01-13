#################################################################
## Global declaration                                          ##
#################################################################
HOSTFILE=/opt/all_host
SEGFILE=/opt/all_segment
TARNAME="gpdb*.tar.gz"
CUSTOMTAR="false"
MPPVERSION="BeyonDB MPP v6.0.0" #unimplement
USERNAME="gpadmin"
MIRRORFLAG="n"
INSTALLMODE="normal"
ENVIRONMENTFILE="greenplum_path.sh"
PTH=/usr/local/gpdb
DATADIR=/home/$USERNAME/gpdata
MASDIR=/home/$USERNAME/gpdata/gpmaster
PRIDIR=/home/$USERNAME/gpdata/gpdatap
MRRDIR=/home/$USERNAME/gpdata/gpdatam
NUMSEG=1 #in most scenario, one server should install 1~4 segments, so we need 1~4 PRIDIR and MRRDIR variables.

case $1 in
        "-clean" )
        CLEAN="f"
        ;;
        "--help" | "-help" | "-h" )
        echo "MPPinstaller.sh use to config system configuration parameters, before using this tool"
        echo "you should:"
        echo " 1.config hostname,IP address,ssh authentication."
        echo " 2.config segment file (all_segment) and host file(all_host)"
        echo ""
        echo "option could be:"
        echo "-P packagename    Declare package name with a custom path, you would use this option if "
        echo "                  your package path like /home/gpdb-0.0.3.tar.gz."
        echo "-p packagename    Declare package name without a custom path, it's the default option "
        echo "                  (if no option has declared, installer will use default path just like"
        echo "                  /usr/local/gpdb*.tar.gz ). But if you have serveral packages in the "
        echo "                  path, the script may not konw which one to decompress."
        echo "-help | -h        show help document."
        echo "-version | -v     show BeyonDB MPP version."
        exit 0
        ;;
        "--version" | "-version" | "-v")
        echo "$MPPVERSION"
        exit 0
        ;;
        "-d" | "-debug" ) #unimplement
        INSTALLMODE="debug"
        ;;
        "-D" | "-Datadir") #unimplement
        MASTERDIR=$2
        PRIDIR=$3
        MRRDIR=$4
        ;;
        "-n" | "--numseg") #unimplement
        NUMSEG=$2

esac


hncheck()
{
 if [ $hnflag == 'y' ] ; then
 htbl="false"
 else if [ $hnflag != 'n' ] ; then
 echo "Please input 'y' or 'n'!"
 else hnflagbl="false"
 fi
fi 
}

mrcheck()
{
 if [ $MIRRORFLAG == 'y' ] ; then
 mrflag="false"
 else if [ $MIRRORFLAG != 'n' ] ; then
 echo "Please input 'y' or 'n'!"
 else mrflag="false"
 fi
fi 
}

withmirror()
{
cat>>/home/$USERNAME/gpinitsystem_config<<EOF
ARRAY_NAME="BeyonDB MPP"
SEG_PREFIX=gpseg
PORT_BASE=40000
declare -a DATA_DIRECTORY=(/home/$USERNAME/gpdata/gpdatap)
MASTER_HOSTNAME=master
MASTER_DIRECTORY=/home/$USERNAME/gpdata/gpmaster
MASTER_PORT=5432
TRUSTED_SHELL=ssh
CHECK_POINT_SEGMENTS=8
ENCODING=UNICODE
MIRROR_PORT_BASE=50000
REPLICATION_PORT_BASE=41000
MIRROR_REPLICATION_PORT_BASE=51000
declare -a MIRROR_DATA_DIRECTORY=(/home/$USERNAME/gpdata/gpdatam)
EOF
}

basic()
{
cat>>/home/$USERNAME/gpinitsystem_config<<EOF
ARRAY_NAME="BeyonDB MPP"
SEG_PREFIX=gpseg
PORT_BASE=40000
declare -a DATA_DIRECTORY=(/home/$USERNAME/gpdata/gpdatap)
MASTER_HOSTNAME=master
MASTER_DIRECTORY=/home/$USERNAME/gpdata/gpmaster
MASTER_PORT=5432
TRUSTED_SHELL=ssh
CHECK_POINT_SEGMENTS=8
ENCODING=UNICODE
EOF
}

sysctlMod()
{
ssh -t -Tq root@$line "cat>>/etc/sysctl.conf<<EOF
kernel.shmmax = 500000000
kernel.shmmni = 4096
kernel.shmall = 4000000000
kernel.sem = 250 512000 100 2048
kernel.sysrq = 1
kernel.core_uses_pid = 1
kernel.msgmnb = 65536
kernel.msgmax = 65536
kernel.msgmni = 2048
net.ipv4.tcp_syncookies = 1
net.ipv4.ip_forward = 0
net.ipv4.conf.default.accept_source_route = 0
net.ipv4.tcp_tw_recycle = 1
net.ipv4.tcp_max_syn_backlog = 4096
net.ipv4.conf.all.arp_filter = 1
net.ipv4.ip_local_port_range = 1025 65535
net.core.netdev_max_backlog = 10000
net.core.rmem_max = 2097152
net.core.wmem_max = 2097152
vm.overcommit_memory = 2
EOF"
ssh -t -Tq root@$line "sysctl -p >> install_log.txt 2>> install_error.txt"  
}

limitMod()
{
ssh -t -Tq root@$line "cat>>/etc/security/limits.conf<<EOF
* soft nofile 65536
* hard nofile 65536
* soft nproc 131072
* hard nproc 131072
* soft core unlimited
EOF"
}

secMod()
{
ssh -t -Tq root@$line "sed -i "s/enforcing/disabled/g" /etc/selinux/config"
}

closefirewall()
{
  ssh -t -Tq root@$line "systemctl stop firewalld >> install_log.txt 2>> install_error.txt"
  ssh -t -Tq root@$line "systemctl disable firewalld >> install_log.txt 2>> install_error.txt"  
}

get_char()
{
    SAVEDSTTY=`stty -g`
    stty -echo
    stty cbreak
    dd if=/dev/tty bs=1 count=1 2> /dev/null
    stty -raw
    stty echo
    stty $SAVEDSTTY
}


#################################################################
## Welcome                                                     ##
#################################################################
echo "************************************************************************"
echo "* Copyright (c) 2020 UniStrong Tech. Co., Ltd. All rights reserved.    *"
echo "* Without the owner's prior written consent,                           *"
echo "* no decompiling or reverse-engineering shall be allowed.              *"
echo "*                                                                      *"
echo "*                                                                      *"
echo "*              Welcome to BeyonDB MPP installer                        *"
echo "*                                                                      *"
echo "* Before installing BeyonDB MPP, you need:                             *"
echo "* 1.config hostname, IP address, SSH authentication.                   *"
echo "* 2.config segment file (all_segment) and host file(all_host).         *"
echo "*                                                                      *"
echo "************************************************************************"
echo ""
echo ""
echo "CTRL+C to break command bash..." #but it seems never breaking
echo $CLEAN
#################################################################
## check segment file && host file                             ##
#################################################################
if [ ! -f $SEGFILE ]; then
  echo "[FATAL]:-Segment file does not exist."
  exit 1
fi

if [ ! -f $HOSTFILE ]; then
  echo "[FATAL]:-Host file does not exist."
  exit 2
fi

#################################################################
## get username                                                ##
#################################################################
htbl="ture"
while [ $htbl == "ture" ]
do
  read -p "Input the DBmanager username of BeyonDB MPP:" USERNAME
  hnflagbl="ture"
  while [ $hnflagbl == "ture" ] && [ $htbl == "ture" ]
  do
    read -p "Use $USERNAME as username?(y/n)" hnflag
    hncheck $hnflag
  done
done

#################################################################
## set mirrorflag                                              ##
#################################################################
mrflag="true"
while [ $mrflag == "true" ]
do
  read -p "Do you wanna initialize BeyonDB MPP with Mirror Segments?(y/n)" MIRRORFLAG
  mrcheck $MIRRORFLAG
done

if [ $MIRRORFLAG == "n" ] ; then
 echo "[INFO]:-Mirror segment instance directory check skipped, mirroring=Off."
else if [ $MIRRORFLAG == "y" ] ; then
     echo "[INFO]:-Mirror segment instance directory check , mirroring=On."
  else
    echo "[FATAL]:-Mirror segment parameter trouble. Exit install script..."
    exit 5
 fi
fi

#################################################################
##    ping                                                     ##
#################################################################
echo "[INFO]:-Running routing test..."
for line in $(cat $SEGFILE)
do
  echo "[INFO]:-Connecting $line..."
  ping -c 2 -i 0.5 $line >/dev/null && echo "[INFO]:-Success to connect $line." || ( exit 3 && echo "[FATAL]:-FAIL to connect $line. Please check the network." );
done

#################################################################
## clean data directory                                        ##
#################################################################

if [ $CLEAN == "y" ] ; then
echo "[INFO]:-Cleaning data directories at master..."
rm -rf $MASDIR >/dev/null
rm -rf $PTH >/dev/null
rm -rf /home/$USERNAME/gpinitsystem_config
for line in $(cat $SEGFILE)
do
echo "[INFO]:-Cleaning data directories at $line..."
ssh -t -Tq root@$line "rm -rf $PRIDIR >/dev/null"
ssh -t -Tq root@$line "rm -rf $PTH    >/dev/null"
done
echo "[INFO]:-Clean work finished."
fi

#################################################################
## scp package                                                 ##
#################################################################
if [ ! -e $TARNAME ] ; then
  echo "[FATAL]:-Package does not exist."
exit 4
fi
cp $TARNAME /usr/local
for line in $(cat $SEGFILE)
do
  echo "[INFO]:-Transporting package to $line..."
  scp -r $TARNAME root@$line:/usr/local
done

#################################################################
## decompress installation package                             ##
#################################################################

echo "[INFO]:-Now decompressing BeyonDB in master. Wait for a few minutes..."
tar -zxvf $TARNAME -C /usr/local/ >> install_log.txt 2>> install_error.txt
chown -R $USERNAME:$USERNAME /usr/local/gpdb

for line in $(cat $SEGFILE)
do
  echo "[INFO]:-Now decompressing BeyonDB in $line. Wait for a few minutes..."
  ssh -t root@$line "tar -zxvf /usr/local/$TARNAME -C /usr/local/ >> install_log.txt 2>> install_error.txt"
  ssh -t root@$line "chown -R $USERNAME:$USERNAME /usr/local/gpdb"
done
echo "done."

#################################################################
## build env                                                   ##
## Only Master host                                            ##
#################################################################
if [ ! -e "$PTH/$ENVIRONMENTFILE" ] ; then
  echo "[FATAL]:-Environment file <$ENVIRONMENTFILE> does not exist. Please check decompression path."
  exit 5
fi

echo "[INFO]:-Build env , change ~/.bash_profile."
if [ -z "`grep "source $PTH/$ENVIRONMENTFILE" /home/$USERNAME/.bash_profile`" ] ; then
  cat>>/home/$USERNAME/.bash_profile<<EOF
source $PTH/$ENVIRONMENTFILE
EOF
fi

#################################################################
## mkdir                                                       ##
#################################################################
#MIRRORFLAG = FALSE

echo "[INFO]:-Creating master data directories. Beware that id of master is '-1'."
mkdir -p $MASDIR
chown -R $USERNAME:$USERNAME $DATADIR

for line in $(cat /opt/all_segment)
do
  echo "[INFO]:-Creating primary segment data directoories at $line."
  ssh -t root@$line "mkdir -p $PRIDIR"
  ssh -t root@$line "chown -R $USERNAME:$USERNAME $DATADIR"
done

if [ $MIRRORFLAG == "y" ] ; then 
  for line in $(cat /opt/all_segment)
  do
    echo "[INFO]:-Creating mirror segment data directories at $line."
    ssh -t root@$line "mkdir -p $MRRDIR"
    ssh -t root@$line "chown -R $USERNAME:$USERNAME $DATADIR"
    done
fi
echo "done."


#################################################################
## config gpinitsystem                                         ##
#################################################################

echo "[INFO]:-Creating BeyonDB MPP configuration file."
touch /home/$USERNAME/gpinitsystem_config
chmod 664 /home/$USERNAME/gpinitsystem_config
chown $USERNAME:$USERNAME /home/$USERNAME/gpinitsystem_config

if [ $MIRRORFLAG == "y" ] ; then
 echo "[INFO]:-Creating initialization configuration file with mirror segments."
 withmirror
else
 echo "[INFO]:-Creating initialization configuration file without mirror segment."
 basic
fi
echo "done."



#################################################################
## system configuration                                        ##
#################################################################

echo "[HINT]:-BeyonDB Cluster are recommended to confirm sysctl.conf, which may leading to unexpected interrupt. Beware of this configuration."
echo "---------------------------------------------------------"
read -p "Do you want to turn off the firewall?(y/n):" FIREWALL
if [ $FIREWALL == 'y' ] ; then
    for line in $(cat $HOSTFILE)
        do
            secMod $line
            echo "[INFO]:-FIREWALL is closed at $line."
        done
    echo "done."
 else if [ $FIREWALL != 'n' ] ; then
 echo "Please input 'y' or 'n'!"
 else
    echo "[WARNING]:- Firewalls will cause communication to be blocked"
 fi
fi

read -p "Do you want to modify the SELINUX config ?(y/n):" SELINUX
if [ $SELINUX == 'y' ] ; then
    for line in $(cat $HOSTFILE)
        do
            secMod $line
            echo "[INFO]:-SELINUX config is modified at $line."
        done
    echo "done."
 else if [ $FIREWALL != 'n' ] ; then
 echo "Please input 'y' or 'n'!"
 else
    echo "[WARNING]:- SELINUX will cause communication to be blocked"
 fi
fi

read -p "Do you want to Configuring system parameters ?(y/n):" SYSCTL
if [ $SYSCTL == 'y' ] ; then
    for line in $(cat $HOSTFILE)
        do
            echo "[INFO]:-Configuring system parameters at $line."
            sysctlMod $line
            limitMod $line
            echo "[INFO]:-System parameters have modified at $line."
        done
    echo "done."
else if [ $SYSCTL != 'n' ] ; then
    echo "Please input 'y' or 'n'!"
else
    echo "[WARNING]:- The system may not perform at its best."
fi
fi
echo "[INFO]:-Install script finished."

echo "[HINT]:-NOW ,RUN gpinitsystem -c /home/$USERNAME/gpinitsystem_config to init BeyonDB MPP."
echo "Press any key to continue..."
char=`get_char`
su -  $USERNAME -c "gpinitsystem -c gpinitsystem_config"