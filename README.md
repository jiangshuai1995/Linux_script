# Linux_script

mysql中需要创建名为hive的数据库 ## 不知道hive能否自动创建
yarn中的资源配置问题


## 0. 目录结构解释

```bash
/opt/clouddata                                          安装文件主目录
/opt/clouddata/modules                                  基础服务安装目录
/opt/clouddata/nfsfile                                  nfs共享目录
/opt/clouddata/Data_platform                            数据中台服务目录
/opt/clouddata/Data_platform/dist                       数据中台前端           
/opt/clouddata/Data_platform/UNI-DataServer
/opt/clouddata/Data_platform/UNI-DataAccess
/opt/clouddata/Data_platform/DS-Server
/opt/clouddata/Data_platform/DS-Server/dist
/opt/clouddata/logs
```

## 1. 服务器基础环境设置

### 配置主机名【所有节点】

以master节点为例

```bash
#example

hostnamectl set-hostname master
hostnamectl --static set-hostname master
hostnamectl --pretty set-hostname master
hostnamectl --transient set-hostname master
```

### 配置/etc/hosts【所有节点】

```sql
vi /etc/hosts

#example:

192.168.11.25 master
192.168.11.26 slave1
192.168.11.27 slave2
```

### 生成密钥【仅主节点】

如果存在rsa密钥可以不用重新生成，密钥在配置ssh无密登陆时使用

```bash
[root@master ~]# ssh-keygen -t rsa 
Generating public/private rsa key pair.
Enter file in which to save the key (/root/.ssh/id_rsa): 
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /root/.ssh/id_rsa.
Your public key has been saved in /root/.ssh/id_rsa.pub.
The key fingerprint is:
40:03:7c:1c:13:da:41:32:12:60:0c:91:0a:50:a5:48 root@master
The key's randomart image is:
+--[ RSA 2048]----+
|OE++=+Oo         |
|=o o.*o+         |
|+ . ..o          |
|.      .         |
|        S        |
|                 |
|                 |
|                 |
|                 |
+-----------------+
```

---

**以下步骤均只在主节点操作**

## 2. 解压部署压缩包

使用如下命令解压部署压缩包

```bash
tar xvf clouddata_install.tar.gz
```

压缩包文件及目录如下：

```bash
clouddata_install/
clouddata_install/playbook
clouddata_install/playbook/files
clouddata_install/playbook/templates
clouddata_install/ansible_v2.9.9_install.tar.gz
```

## 3. 检查部署包文件

## 4. 安装ansible

```bash
cd clouddata_install
./ansible_v2.9.0_install.sh
```

输出提示如下，证明ansible已经安装完成

```bash
#############################开始安装Ansible依赖内容#####################################
准备中...                          ################################# [100%]
正在升级/安装...
   1:python-six-1.9.0-2.el7           ################################# [  5%]
   2:python-ply-3.4-11.el7            ################################# [  9%]
   3:python-pycparser-2.14-1.el7      ################################# [ 14%]
   4:python-cffi-1.6.0-5.el7          ################################# [ 18%]
   5:python-markupsafe-0.11-10.el7    ################################# [ 23%]
   6:python-ipaddress-1.0.16-2.el7    ################################# [ 27%]
   7:python-idna-2.4-1.el7            ################################# [ 32%]
   8:python-enum34-1.0.4-1.el7        ################################# [ 36%]
   9:python-backports-1.0-8.el7       ################################# [ 41%]
  10:python-backports-ssl_match_hostna################################# [ 45%]
  11:python-babel-0.9.6-8.el7         ################################# [ 50%]
  12:python2-pyasn1-0.1.9-7.el7       ################################# [ 55%]
  13:python2-cryptography-1.7.2-1.el7_################################# [ 59%]
  14:libyaml-0.1.4-11.el7_0           ################################# [ 64%]
  15:PyYAML-3.10-11.el7               ################################# [ 68%]
  16:python-paramiko-2.1.1-2.el7      ################################# [ 73%]
  17:python-jinja2-2.7.2-2.el7        ################################# [ 77%]
  18:python-setuptools-0.9.8-7.el7    ################################# [ 82%]
  19:sshpass-1.06-2.el7               ################################# [ 86%]
  20:python-passlib-1.6.5-2.el7       ################################# [ 91%]
  21:python-httplib2-0.9.2-1.el7      ################################# [ 95%]
  22:python2-jmespath-0.9.0-3.el7     ################################# [100%]
#############################开始安装Ansible#############################################
警告：ansible-2.9.9-1.el7.ans.noarch.rpm: 头V4 RSA/SHA1 Signature, 密钥 ID 442667a9: NOKEY
准备中...                          ################################# [100%]
	软件包 ansible-2.9.9-1.el7.ans.noarch 已经安装
#############################安装Ansible完成#############################################
```

## 5. 配置ansible/hosts

根据服务器的角色及安装服务的分配，修改/etc/ansible/hosts

```bash
vi /etc/ansible/hosts
```

example:

```bash
[ssh]
192.168.11.25 ansible_ssh_user=root ansible_ssh_pass=123456
192.168.11.26 ansible_ssh_user=root ansible_ssh_pass=123456
192.168.11.27 ansible_ssh_user=root ansible_ssh_pass=123456
[all]
192.168.11.25 ansible_ssh_user=root ansible_ssh_pass=123456
192.168.11.26 ansible_ssh_user=root ansible_ssh_pass=123456
192.168.11.27 ansible_ssh_user=root ansible_ssh_pass=123456
[mysql]
192.168.11.26 ansible_ssh_user=root ansible_ssh_pass=123456
[nginx]
192.168.11.26 ansible_ssh_user=root ansible_ssh_pass=123456
[kafka]
192.168.11.26 ansible_ssh_user=root ansible_ssh_pass=123456
[nfs_server]
192.168.11.26 ansible_ssh_user=root ansible_ssh_pass=123456
[nfs_client]
192.168.11.25 ansible_ssh_user=root ansible_ssh_pass=123456
192.168.11.27 ansible_ssh_user=root ansible_ssh_pass=123456
[hadoop_master]
192.168.11.25 ansible_ssh_user=root ansible_ssh_pass=123456
[hadoop_slave]
192.168.11.26 ansible_ssh_user=root ansible_ssh_pass=123456
192.168.11.27 ansible_ssh_user=root ansible_ssh_pass=123456
[livy]
192.168.11.26 ansible_ssh_user=root ansible_ssh_pass=123456
[hive]
192.168.11.25 ansible_ssh_user=root ansible_ssh_pass=123456
[server]
192.168.11.26 ansible_ssh_user=root ansible_ssh_pass=123456
```

all标签中写入所有服务器

mysql，kafka，nginx单机部署指定一台服务器

nfs_server指定一台服务器，nfs_client指定剩余服务器

hadoop_master指定一台服务器,hadoop_slave指定剩余服务器

livy，hive指定一台服务器，建议与hadoop_master为同一台

server指定一台服务器

**注意server与mysql不能为同一台服务器，hive与mysql不能为同一台服务器**

## 6. 执行安装命令

```bash
#ssh 免密配置
ansible-playbook ssh.yml

#基础环境安装配置
ansible-playbook main.yml

#服务安装配置
ansible-playbook server.yml
```

---

**以下操作为安装完成后的检查，请按照部署的规划至每台服务器查看服务安装情况**

## 7. 检查服务状态

在服务器上使用jps命令查看服务状态

```bash
jps
```

## 8. 关闭或重启服务

mysql

```bash
systemctl status mysql
systemctl restart mysql
systemctl stop mysql
```

kafka

```bash
systemctl status kafka
systemctl restart kafka
systemctl stop kafka
```

nginx

```bash
systemctl status nginx
systemctl restart nginx
systemctl stop nginx
```

## FAQ

### Q1. 能否部署单个服务?

答：可以，playbook文件夹下还有单个服务的安装剧本，例如可以使用`ansible-playbook mysql.yml` 单独安装mysql