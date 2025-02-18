
## Intro
My personal Vim configurations and some plugins which I used in my daily job.

I put Vim related settings in `plugin/settings/Settings.vim`, and isolate other plugins' settings in `plugin/settings` directory.

It's how my Vim looks now:

![image](https://github.com/kaochenlong/eddie-vim/raw/ruby/screenshots/vim-airline.png)

and <a href="http://blog.eddie.com.tw/2012/03/06/my-vimrc/" target="_blank">Here</a> are some screenshots on the other platforms.

## Usage

### Installation and Requisites:

#### Automatic installer... (DO YOU TRUST ME?)

If you already install `git` in your machine, and you trust me and my automatic install shell script, you can install my vimrc via `curl` or `wget`, just copy one of the following line and paste in terminal:

1. via `curl`:

`sh <(curl -L https://github.com/kaochenlong/eddie-vim/raw/master/utils/install.sh)`

2. or via `wget`:

`sh <(wget --no-check-certificate https://github.com/kaochenlong/eddie-vim/raw/master/utils/install.sh -O -)`

#### Manual installation

1. BACKUP your `.vim` directory and `.vimrc` first.(IMPORTANT!)

2. `cd ~` to change directory to your home directory.

3. copy files to your home directory:

        git clone git://github.com/kaochenlong/eddie-vim.git

4. cd to `eddie-vim` directory and execute the `update.sh` to get latest version modules:

        cd eddie-vim
        ./update.sh

5. make a symbolic link `.vim` to `eddie-vim` that you just cloned, or just rename it to `.vim` also be fine:

        ln -s eddie-vim .vim

6. link the vimrc to

        ln -s .vim/vimrc .vimrc

7. if you use GUI version VIM, such as MacVim or GVim, you can also link to `.gvimrc`:

        ln -s eddie-vim/gvimrc .gvimrc

8. if you use Airline under Ubuntu or something which can not show the correct icons/fonts on the bottom, you can check [this link](https://github.com/Lokaltog/powerline-fonts), patch the font and it should look pretty nice.

9.  you may need to install `ack` or `silver searcher` first if you use `ack.vim`.

### Update:

change directory to `~/.vim` and execute `./update.sh` script, it should do all the updates automatically.

### Features and Key Mappings:

1. Resize splited windows automatically, so that you  get a bigger editing room if you're working with a smaller screen. (stole from [Gary Bernhardt](https://github.com/garybernhardt))

2. Toggle between working mode and presentation mode by `<leader>z`, but only work in GUI version Vim. You can check [here](http://blog.eddie.com.tw/2012/03/14/switch-to-presentation-mode/) to see how it looks like. (stole from [Mike Skalnik](https://github.com/skalnik))

3. some usually used key mappings in normal mode:

    a. `<F2>` to toggle NERDTree on and off.

    b. `<F3>` to search Buffer with CtrlP plugin.

    c. `<F4>` to toggle Tagbar window.

    d. `<F5>` is the script runner, according to it's filetype, it will run Ruby(*.rb) ,Python(*.py) or Javascript(*.js) file(SpiderMonkey is needed), even CoffeeScript(*.coffee, but you may have to install CoffeeScript first). If the filetype is VimScript, `<F5>` will run `:source %` for you.

    e. `<F7>` to switch to previous tab, and `<F8>` to the next tab.

    f. hit `<ctrl>p` will launch a quick window to match keywords from your current working directory, not only file name, but also path name. And `<ctrl>w u` will match from your MRU(Mostly Recent Used) files, which is also frequently used.
    
    g. hit `: Ack` will launch ack.

    h. hit `<leader>` twice to toggle comment on and off.

    i. `<tab>` and `<shift><tab>` to increase and decrease the syntax identation.

    j. `<leader>v` to open `.vimrc` in a new tab.

    k. `<leader>0` to edit or create `README.md` in current working directory.

4. Remove tailing whitespace automatically while saving.
5. Support UVM syntax highlight.
6. Support [ale](https://github.com/dense-analysis/ale) lint check.
   1. You should create a `.local.vimrc` in the project root directory to import compilation option, such as include path and dmacro. 
7. Support Verilog automatic. You can refer to [here](https://github.com/HonkW93/automatic-verilog) for more details.

## FAQ

if you can not found `ctags` command, just find your ctags path and replace my settings in `plugin/settings/Ctags.vim` file:

    let tagbar_ctags_bin = '/your/path/to/ctags'

and [Universal Ctags](https://ctags.io/) is recommended.
