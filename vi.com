h j k l光标移动
ctrl+f 屏幕向下移动一页
ctrl+b 屏幕向上移动一页
ctrl+d 屏幕向下移动半页
ctrl+u 屏幕向上移动半页

:n1,n2s/word1/word2/g:n1与n2为数字。在第n1与n2行之间寻找word1这个字符串，并将该字符串取代为word2.例如：在100到200行之间搜寻vbird并取代为VBIRD则：
:100,200s/vbird/VBIRD/g
:1,$s/word1/word2/g从第一行到最后一行
:1,$s/word1/word2/gc:从第一行到最后一行寻找word1字符串，并将该字符串取代为word2!且在取代之前显示提示字符给用户确认是否需要取代

1.将文件另存成一个man.test.config的文件名
:w man.test.config
2.大写的O便新增一行且插入模式,esc退出
3.:r filename 把filename的文件全部写入到当前文件中
4.:n 编辑下一个文件
　:N 编辑上一个文件
　:files 列出目前这个vim的开启的所有文件
5.vi这个程序中，不想离开vi,但是为了执行ls 
 :!ls ~/home

practice vim的基础知识:
a 表示在当前光标之后添加内容
A 表示在当前行的结尾添加内容

db 删除从光标起始位置到单词开头的内容,但会原封未动的留下最后一个字符
x  删除光标所在的字符

b  把光标移动到单词的开头
dw 删掉整个单词
daw "delete a world" dnw 删除n个单词
yyp 复制一行
f0 调到此数字
ctrl+a 把当前光标之上或之后的数值加上count,若光标不在数字上,会在当前行查找一个数字 ctrl+x 反之
cnw 删除n个单词并且进入insert模式

gu/Uaw把当前的单词变成小写或者大写

在insert模式下:
ctrl+h 删除前一个字符(同退格键)
ctrl+w 删除前一个单词
ctrl+u 删至行首

yt, 复制,前面的字符
jA 调到下一行末尾处
(ctrl+r)0 复制的文本粘贴到光标所在的位置
R 由普通模式进入替换模式

:6t. 把第6行复制到当前行下方
:t6 把当前行复制到第6行下方
:t. 为当前行创建一个副本(类似普通模式下面的yyp)
:t$ 把当前行复制到文本结尾
:'<,'>t0 把高亮选中的行复制到文件开头

:normal
 
