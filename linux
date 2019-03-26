**** 命令行优于图形界面
**** 键盘优于鼠标
**** 搜索优于导航


************基础命令行*************
一.常用命令

1.dpkg --list 查看已安装的软件
2.sudo apt-get remove --purge 要卸载的软件的名字 #卸载软件的同时删除配置文件
  sudo apt-get remove 要卸载软件的名字 #卸载该软件

3.sudo apt-get clean 删除缓存
4.dpkg -i xxx.deb 安装deb软件包
5.dpkg -r xxx.deb 删除软件包
6.dpkg -r --purge xxx.deb 连同配置问价一起删除
7.banner 表示输出图形字符(toilet、figlet)
8.adduser会创建用户，创建目录，创建密码(提示你设置)，作者一系列的操作，而useradd只会创建用户,创建完了用passwd　lilei去设置新用户的密码

9.linux截屏快捷键　ctl+alt+a

10.删除指定目录下所有的.DS_Store文件
　sudo find /home/path -name ".DS_Store" -type f -delete
11.ctrl+u 从光标处向前删除指令串
　 ctrl+k 从光标处向后删除指令串
　 ctrl+a 让光标移动到指令串的最前面
　 ctrl+e 让光标移动到指令串的最后面

二查看硬盘及内存空间

1.查看内存及swap的大小
free -m
2.查看当前文件夹下所有文件大小(包括子文件夹)
du -sh
3.查看指定文件夹下所有的文件大小(包括子文件夹)
du -h ftp
4.查看指定文件夹大小
du -hs ftp
5.查看磁盘剩余空间
df -hl
6.查看每个根路径的区分大小
df -h
7.返回该目录的大小
du -sh [目录名]
8.返回该文件夹总Ｍ数
du -sm [文件夹]

三.linux文件权限

1.chgrp:改变文件所属群组
2.chown:改变文件所有者
    ---chmod a+w filename 表示每个人都可以有写入的权限
　　---chmod a-x filename 取消每个人x的权限
3.chmod:改编文件的权限

四.BASH
1.变量与变量内容以一个等号来连接
2.等号两边不能直接接空格符
3.变量名称只能是英文字母与数字，但是开头不能是数字
4.变量内容若有空格符可使用双引号或者单引号将变量内容结合起来
　a.双引号内的特殊字符如$等，可以保有原本的特性
　b.单引号内的特殊字符则仅为一般字符(纯文本)
5.``之内的指令将会被先执行，而其执行出来的结果将作为外部的输入信息
6.echo ${path#/*local/bin:}
    #从变量内容的最前面开始向右删除，且仅仅删除最短的那个(％)
　　##删除掉最长的那个数据(％％)
7.cut(对于行而言)
  a.cut -d '分割字符' -f fields(有特定分隔字符)
  b.cut -c 字符区间
echo ${PATH} | cut -d ':' -f 5
echo ${PATH} | cut -d ':' -f 3,5
export | cut -c 12-
8.grep [-acinv][--color=auto] '搜寻字符串' filename
 a.-a 将binary文件以text文件的方式搜寻数据
 b.-c 计算找到'搜寻字符串'的次数
 c.-i 忽略大小写的不同，所以大小写视为相同
 d.-n 顺便输出行号
 e.-v 反向选择，亦即显示出没有'搜寻字符串'内容的那一行
 f.--color=auto 可以将找到的关键词部分加上颜色的显示
***********基础命令行**************

enjarify反编译apk
cd pwd/enjarify
./enjarify.sh youapp.apk ---> .jar

jadx查看jar源码
cd pwd/build/jadx
bin/jadx-gui lib/youlib.jar

查看资源文件
sudo apktool d youapp.apk
