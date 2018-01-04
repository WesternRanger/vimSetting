### 我的vim配置

我的vim之路可能比绝大数程序员要长。

- 2016年3月感觉对vim的操作很感兴趣，稍微了解了一下。
- 同年7月下决心一定要把手头的webstorm换掉，因为确实太笨重了。
- 之后的几个月把前端开发所用的几乎所有主流的IDE（编辑器配置过后功能比较强大，可算作IDE）都用遍了。比如webstorm、sublime、atom、vscode，我看破了他们的优缺点。
- 这期间不断折腾过vim，不得不说vim学习曲线太过陡峭，直到今天，才感觉可以开发项目了。
- 后来坚持了几天遂放弃，很多场景还是不熟练，改用webstorm吧，开心就好。
- 1年半以后，18年一月三日深夜，时值来京3周年之际，不满足与现有ide，想折腾一下，想到现在对vim还没掌握复制到粘贴板功能。随攻克之。希望今后的python学习能用vim作主要IDE

**从vim官方plugin平台安装plugin**
> http://www.vim.org/ 学好英语很重要，这里的插件质量很高，mac平台不支持"+y 复制到clipboard的问题就是从这里找的插件解决的。

**用[vindle](https://github.com/VundleVim/Vundle.vim)管理插件。**
>复制vimrc文件->系统~/.vimrc文件前，首先安装[vindle](https://github.com/VundleVim/Vundle.vim)

- 字段全局搜索[Ack](https://github.com/mileszs/ack.vim) ,[说明文档](http://harttle.com/2015/12/21/vim-search.html)
- 文件名搜索[ctrlp](https://github.com/kien/ctrlp.vim)
- 部分文件(比如*.js、*.css、...)[fileHeader](https://github.com/alpertuna/vim-header)
- 目录管理[NERDTree](https://github.com/scrooloose/nerdtree)
- 开启多个文件[tabs共享](https://github.com/jistr/vim-nerdtree-tabs)
- vue代码高亮[vim-vue](https://github.com/posva/vim-vue),注：只能高亮*.js文件里的vue代码。
- *.vue文件代码高亮[html5.vim](https://github.com/othree/html5.vim),其原理就是.vue文件跟.html文件用一套格式。
- 代码注释插件[nerdcommenter](https://github.com/scrooloose/nerdcommenter)
- zencoding插件[emmet](https://github.com/mattn/emmet-vim)
- 自动补全插件 [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
  但对于CSS的自动补全有点麻烦，因为多数CSS的语法是上下文相关的，而YCM的自动补全触发器只考虑当前行。 较好的补救办法是手动设置一下触发器，在~/.vimrc中添加：
   ```
   let g:ycm_semantic_triggers = {
    \   'css': [ 're!^\s{4}', 're!:\s+'],
    \   'html': [ '</' ],
    \ }
    ```
- CSS前后大括号匹配 [delimitMate](https://github.com/Raimondi/delimitMate) 
- vim调用OS clipboard
  插件地址：https://vim.sourceforge.io/scripts/script.php?script_id=2098
  github地址：https://github.com/kana/vim-fakeclip
  使用vindle  Plugin 'kana/vim-fakeclip' PluginInstall 安装即可

**其他**
- undo，redo：https://stackoverflow.com/questions/1555779/how-do-i-do-redo-i-e-undo-undo-in-vim
