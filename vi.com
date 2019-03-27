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
