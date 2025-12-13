# Vim 配置说明文档

一个功能完善的 Vim 配置，适用于前端开发（Vue/JavaScript/CSS/HTML）。

---

## 快速开始

### 1. 安装 Vundle 插件管理器

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

### 2. 复制配置文件

```bash
cp vimrc ~/.vimrc
```

### 3. 安装插件

打开 vim 后执行：

```vim
:PluginInstall
```

### 4. 安装 YouCompleteMe（可选，推荐）

```bash
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
```

### 5. 安装 Ack 全局搜索依赖

```bash
# macOS
brew install the_silver_searcher

# Ubuntu/Debian
sudo apt-get install silversearcher-ag
```

---

## 核心插件列表

| 插件 | 功能 | 使用文档 |
|------|------|----------|
| [Vundle](https://github.com/VundleVim/Vundle.vim) | 插件管理器 | - |
| [NERDTree](https://github.com/scrooloose/nerdtree) | 文件树导航 | 按 `F2` 或 `\n` 切换 |
| [NERDCommenter](https://github.com/scrooloose/nerdcommenter) | 快速注释 | `\cc` 注释, `\cu` 取消注释 |
| [CtrlP](https://github.com/ctrlpvim/ctrlp.vim) | 模糊文件搜索 | `Ctrl+P` 打开 |
| [Ack.vim](https://github.com/mileszs/ack.vim) | 全局文本搜索 | `:Ack 'searchtext'` |
| [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) | 智能代码补全 | 自动触发 |
| [Emmet](https://github.com/mattn/emmet-vim) | HTML/CSS快速编写 | [文档](https://docs.emmet.io/) |
| [vim-vue](https://github.com/posva/vim-vue) | Vue 语法高亮 | 自动生效 |
| [Syntastic](https://github.com/vim-syntastic/syntastic) | 语法检查 | 需配置 ESLint |
| [delimitMate](https://github.com/Raimondi/delimitMate) | 括号自动补全 | 自动生效 |
| [vim-fakeclip](https://github.com/kana/vim-fakeclip) | 系统剪贴板支持 | `"+y` 复制, `"+p` 粘贴 |
| [vim-git-branch-info](https://github.com/taq/vim-git-branch-info) | 显示 Git 分支 | 状态栏显示 |

---

## 快捷键速查表

### 通用操作

| 快捷键 | 模式 | 功能 |
|--------|------|------|
| `jk` | Insert | 快速退出到 Normal 模式 |
| `Ctrl+Z` | Normal/Insert | 撤销 (Undo) |
| `Ctrl+R` | Normal | 重做 (Redo) |
| `F1` | All | 切换粘贴模式 |
| `Space` | Normal | 折叠/展开代码块 |

### Insert 模式增强

| 快捷键 | 功能 |
|--------|------|
| `Ctrl+A` | 移动到行首 |
| `Ctrl+E` | 移动到行尾 |
| `Ctrl+H` | 向左移动光标 |
| `Ctrl+L` | 向右移动光标 |

### 文件管理（NERDTree）

| 快捷键 | 功能 |
|--------|------|
| `F2` | 切换文件树 |
| `\n` | 切换 NERDTree tabs |
| `p` | 跳到父节点 |
| `P` | 跳到根节点 |
| `o` | 打开/关闭文件或目录 |
| `t` | 在新标签页打开 |
| `i` | 水平分割打开 |
| `s` | 垂直分割打开 |
| `m` | 显示文件操作菜单 |

### 文件搜索（CtrlP）

| 快捷键 | 功能 |
|--------|------|
| `Ctrl+P` | 打开文件搜索 |
| `Ctrl+J/K` | 上下移动选择 |
| `Ctrl+T` | 新标签页打开 |
| `Ctrl+V` | 垂直分割打开 |
| `Ctrl+X` | 水平分割打开 |

### 代码注释（NERDCommenter）

| 快捷键 | 功能 |
|--------|------|
| `\cc` | 注释当前行或选中行 |
| `\cu` | 取消注释 |
| `\c<space>` | 切换注释状态 |

### 文件头（Header）

| 快捷键 | 功能 |
|--------|------|
| `F4` | 添加文件头注释 |

### 全局搜索（Ack）

```vim
:Ack 'searchtext'              " 搜索当前目录
:Ack 'searchtext' path/to/dir  " 搜索指定目录
```

---

## 配置说明

### 基础设置

- **缩进**: 4 空格，自动转换 Tab 为空格
- **行号**: 显示行号
- **鼠标**: 支持鼠标操作
- **语法高亮**: 默认开启
- **配色方案**: ron
- **自动保存**: 切换文件时自动保存
- **搜索**: 高亮显示，增量搜索

### Vue 文件支持

配置已将 `.vue` 文件识别为 HTML 类型，支持语法高亮和补全。

### 自动补全配置

YouCompleteMe 已针对 CSS 和 HTML 配置了自动触发：

```vim
let g:ycm_semantic_triggers = {
  \ 'css': [ 're!^\s{4}', 're!:\s+'],
  \ 'html': [ '</' ],
  \ }
```

---

## 常见问题

### 1. YouCompleteMe 安装失败

确保安装了必要的依赖：

```bash
# macOS
brew install cmake python3

# Ubuntu
sudo apt-get install build-essential cmake python3-dev
```

### 2. 系统剪贴板不工作

vim-fakeclip 插件已安装，使用 `"+y` 复制，`"+p` 粘贴。

### 3. ESLint 语法检查不工作

需要在项目中安装 ESLint：

```bash
npm install -g eslint
```

### 4. NERDTree 自动打开

配置文件中已设置启动时自动打开 NERDTree，如需关闭，注释掉：

```vim
autocmd vimenter * NERDTree
```

### 5. Ack 搜索不工作

确保安装了 `ag`（The Silver Searcher）：

```bash
brew install the_silver_searcher  # macOS
```

---

## 进阶技巧

### 1. 书签功能

NERDTree 支持书签，在 NERDTree 中按 `m` 然后选择 `a` 添加书签。

### 2. 多文件编辑

```vim
:tabe filename    " 在新标签页打开文件
gt / gT           " 切换标签页
:buffers          " 查看缓冲区列表
:b N              " 切换到第 N 个缓冲区
```

### 3. 代码折叠

- `Space`: 切换当前折叠
- `zR`: 展开所有折叠
- `zM`: 折叠所有代码

### 4. 分屏操作

```vim
:split filename   " 水平分割
:vsplit filename  " 垂直分割
Ctrl+W + 方向键    " 切换窗口
```

---

## 更新日志

### 最近修复

- ✅ 修复了 `syntastic_javascript_checkers` 的拼写错误
- ✅ 更新了 NERDTree 的 API 调用（`b:NERDTree.isTabTree()`）
- ✅ 移除了重复的 `set mouse=a` 配置
- ✅ 优化了代码格式和注释

---

## 个人 Vim 使用历程

我的 vim 之路可能比绝大数程序员要长：

- 2016年3月 感觉对 vim 的操作很感兴趣，稍微了解了一下
- 2016年7月 下决心把 WebStorm 换掉，因为确实太笨重
- 之后几个月 把前端开发所用的几乎所有主流 IDE 都用遍了（WebStorm、Sublime、Atom、VSCode）
- 这期间不断折腾 vim，学习曲线确实陡峭
- 2018年1月 来京3周年，攻克了复制到剪贴板功能，希望用 vim 作为主要 IDE

---

## 参考资源

- [Vim 官方插件平台](http://www.vim.org/)
- [Ack 搜索教程](http://harttle.com/2015/12/21/vim-search.html)
- [Vim Undo/Redo 说明](https://stackoverflow.com/questions/1555779/how-do-i-do-redo-i-e-undo-undo-in-vim)

---

## 贡献

欢迎提交 Issue 和 Pull Request！

## License

MIT
