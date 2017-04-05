## 我的vim配置

我的vim之路可能比绝大数程序员要长。

- 2016年3月感觉对vim的操作很感兴趣，稍微了解了一下。
- 同年7月下决心一定要把手头的webstorm换掉，因为确实太笨重了。
- 之后的几个月把前端开发所用的几乎所有主流的IDE（编辑器配置过后功能比较强大，可算作IDE）都用遍了。比如webstorm、sublime、atom、vscode，我看破了他们的优缺点。
- 这期间不断折腾过vim，不得不说vim学习曲线太过陡峭，直到今天，才感觉可以开发项目了。

因为是入门级的选手，所以配置比较简单，只有一些我平时做web前端开发常用的插件。

用[vindle](https://github.com/VundleVim/Vundle.vim)管理插件。

- 字段全局搜索[Ack](https://github.com/mileszs/ack.vim) ,[说明文档](http://harttle.com/2015/12/21/vim-search.html)
- 文件名搜索[ctrlp](https://github.com/kien/ctrlp.vim)
- 部分文件(比如*.js、*.css、...)[fileHeader](https://github.com/alpertuna/vim-header)
- 目录管理[NERDTree](https://github.com/scrooloose/nerdtree)
- 开启多个文件[tabs共享](https://github.com/jistr/vim-nerdtree-tabs)
- vue代码高亮[vim-vue](https://github.com/posva/vim-vue),注：只能高亮*.js文件里的vue代码。
- *.vue文件代码高亮[html5.vim](https://github.com/othree/html5.vim),其原理就是.vue文件跟.html文件用一套格式。
- 代码注释插件[nerdcommenter](https://github.com/scrooloose/nerdcommenter)
- zencoding插件[emmet](https://github.com/mattn/emmet-vim)

具体配置请看[.vimrc ](./.vimrc)
复制.vimrc文件前，首先安装[vindle](https://github.com/VundleVim/Vundle.vim)
