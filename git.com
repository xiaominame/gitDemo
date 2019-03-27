一.
1.显示版本库.git目录所在的位置
　git rev-parse --git-dir
2.显示工作区根目录
  git rev-parse --show-toplevel
3.删除git全局配置文件中关于user.name和user.email的设置
  git config --unset --global user.name
  git config --unset --global user.email
4.输出用户姓名和邮件的名字
  git config user.name
  git config user.email
5.git log --pretty=fuller
6.重新恢复user.name和user.email的设置
  git config --global user.name "youname"
  git config --global user.email "youemail@.com"
  git conmit --amend --allow-empty --reset-author
 参数说明:
 --amend是对刚刚的提交进行修补，这样就可以改正前面的提交中错误的用户名和邮件地址，而不会产生另外的新的提交
 --allow-empty 使得空白提交被允许，因为要进行的羞不提交实际上是个空白提交
 --reset-author 将提交者的id同步修改,否则只会影响提交者的id。使用此参数也会重置authorDate的信息

二 git暂存区
1.git log --stat(可以看到每次提交的文件变更统计)
2.git diff 查看修改后的问价与版本库中的差异(版本库和本地共有的)
3.git log --pretty=oneline 
4.git diff HEAD 将工作区和HEAD(当前工作分之)相比，会看到更多的差异
5.git checkout 撤销工作区中文件尚未提交的修改


暂存区说明:
   a.git commit时，暂存区的目录树会写到版本库中，master分支会做相应的更新，即master最新指向的目录树就是提交时原暂存区的目录树
   b.git reset HEAD时，暂存区的目录树会被重写，会被master分支指向的目录树所替换,但是工作区不受影响
   c.git rm --chached <file>时，会直接从暂存区删除文件，工作区则不做出改变
   d.git checkout .或 git checkout -- <file> ,会用暂存区全部的文件或指定的文件替换工作区的文件。这个操作很危险，会清除工作区中未添加到暂存区的改动
   e.git checkout HEAD .或 git checkout HEAD <file>,会用HEAD指向的master分支中的全部或部分文件替换暂存区和工作区的文件


如果删除本地的文件而HEAD上面还有这个文件
   git fetch --all
   git reset --hard origin/master
   git pull

6.对于HEAD(版本库中当前提交)指向的目录树
    git ls-tree -l HEAD
  显示暂存区的目录树
　　git ls-files -s
7.工作区中文件的大小
    find . -path ./.git -prune -o -type f -printf "-20p\t%s\n"

8.git reflog show master | head -5
  git reset --hard <commit>
  a.替换引用的指向。引用指向新的提交id
　b.替换暂存区。替换后，暂存区的内容和引用指向的目录树一致
　c.替换工作区。替换后，工作区的内容变得和暂存区一致，也和HEAD所指向的目录树内容相同
　git reset --soft <commit>
  a.只更改引用的指向，不改变暂存区和工作区
　git reset <commit>
  a.更改引用的指向及重置暂存区，但是不改变工作区
  git reset (HEAD)
  a.仅用HEAD指向的目录树重置暂存区，工作区不会受到影响，相当于将之前用git add 命令更新到暂存区的内容撤出暂存区。引用也未改变，因为引用重置到HEAD相当于没有重置
  git reset -- filename(git reset HEAD filename)
  a.仅将文件filename的改动撤出暂存区，暂存区中其他文件不改变。相当于命令git add filename的反向操作
  git reset --soft HEAD^(git commit --amend)
  a.工作区和暂存区不改变，但是引用向前回退一次。当对最新提交的提交说明或提交的更改不满意，撤销最新的提交以便重新提交
  git reset HEAD^
  a.工作区不改变，但是暂存区会回退到上一次提交之前，引用也会回退一次
　git reset --hard HEAD^
  a.彻底撤销最近的提交。引用回退到前一次，而且工作区和暂存区都会回退到上一次提交的状态。自上一次以来的提交全部丢失


