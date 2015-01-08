" Folding, thanks god you are
" set foldmethod=marker
" set foldmarker={,}
" часть из поста python+vim from unlogic.co.uk
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" " required!
Bundle 'gmarik/vundle'

augroup vimrc_autocmds
        autocmd!
        " highlight characters past column 120
        autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
        autocmd FileType python match Excess /\%120v.*/
        autocmd FileType python set nowrap
        autocmd FileType cfg set foldmethod=indent
augroup END
Bundle 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
" Powerline deactivate in sake of airline(works better with buffers)
" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" let g:Powerline_symbols = 'fancy'
"
Bundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = 'powerlineish'
let g:airline_toggle_whitespace = 1
let g:airline#extensions#whitespace#enabled = 0

Bundle 'scrooloose/nerdtree'
Bundle 'git://github.com/davidhalter/jedi-vim' 
map <C-q> :NERDTreeToggle<CR>
Bundle 'ervandew/supertab'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'altercation/vim-colors-solarized'
" fugitive needed to show git branch in airline
Bundle 'tpope/vim-fugitive'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Jedi automatically starts the completion, if you type a dot, e.g. str., if
" you don't want this:
let g:jedi#popup_on_dot = 0

set relativenumber

" для уебанты и скрина
if &term == "screen"
  set term=xterm
 endif

" copy to clipboard in Mac OS X
set clipboard=unnamed

" выкл. вызов фсинк - хак для екст*
set nofsync

" Показывать незавершённые команды в статусбаре
" set showcmd

" иконка? терминал? показывать? мрсейнт, что за бред? :)
" set icon

" авто-переход в каталог текущего файла
set autochdir

" подсвечиваем current line
set cursorline

" ширина таба 4 символа
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Включаем нумерацию строк
set number

" Включаем несовместимость настроек с Vi (ибо Vi нам и не понадобится).
set nocompatible

" Показывать положение курсора всё время.
set ruler  

" Фолдинг по отступам
" set foldmethod=indent

" Поиск по набору текста (очень полезная функция)
set incsearch

" Отключаем подсветку найденных вариантов, и так всё видно.
" set nohlsearch

" дополнение {, накуй нада
" noremap { {<CR>}<Esc>O

" Прощайте, тесты "лесенкой" - куйня, все равно аи си херят все а не буфер
" set pastetoggle=<F12>


" Поддержка мыши
set mouse=a
set mousemodel=popup

" Скрывать указатель мыши, когда печатаем
set mousehide

" Кодировка текста по умолчанию
set termencoding=utf-8

" Не мигать
set novisualbell

" Не пищать
set t_vb=

" Включить авто-отступы
set autoindent

" Включить подсветку синтаксиса
syntax enable

" Меняем цветовую схему
colorscheme solarized

" Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Включаем 256 цветов в терминале, мы ведь работаем из иксов?
""Нужно во многих терминалах, например в gnome-terminal
set t_Co=256

" Вырубаем черточки на табах
 set showtabline=0

" Колоночка, чтобы показывать плюсики для скрытия блоков кода:
 set foldcolumn=1

" Переносим на другую строчку, разрываем строки
set wrap
set linebreak

" и включаем бояны по поддержке синтаксиса
filetype on 
filetype plugin on
filetype indent on

" Включаем "умные" отспупы ( например, автоотступ после {)
set smartindent

" Формат строки состояния
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %5*%0*%<%f\ %3*%m%1*%r%0*\ %2*%y%4*%w%0*%=[%b\ 0x%B]\ \ %8l,%10([%c%V/%{strlen(getline(line('.')))}]%)\ %P
" set statusline=%<%f%h%m%r\ %{&encoding}\ %3*%m%1*%r%0*\ %2*%y%4*%w%0*%=[%b\ 0x%B]\ \ %8l,%10([%c%V/%{strlen(getline(line('.')))}]%)\ %P
" set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P 
set laststatus=2

" Fix <Enter> for comment
set fo+=cr

" Опции сесссий
set sessionoptions=curdir,buffers,tabpages

" игнорировать прописные/строчные при поиске
set ignorecase

" насильно заставить его считать, что терминал с темным фоном
set background=dark" а мне темный вим нравиться ;)

" highlight Comment ctermfg=darkgray

" возможность использовать команды при русской раскладке
" set langmap=Ж:,йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,э',яz,чx,сc,мv,иb,тn,ьm,б\,,ю.,ё`

" проверка скобок
set showmatch

" увеличение истории команд
set history=3000

set wildmenu
set wildcharm=<tab>

set hlsearch

" vim -b : edit binary using xxd-format!
augroup Binary
au!
	au BufReadPre  *.bin let &bin=1
	au BufReadPost *.bin if &bin | %!xxd
	au BufReadPost *.bin set ft=xxd | endif
	au BufWritePre *.bin if &bin | %!xxd -r
	au BufWritePre *.bin endif
	au BufWritePost *.bin if &bin | %!xxd
	au BufWritePost *.bin set nomod | endif
augroup END


" vim -b : edit binary using xxd-format!

"-------------------------
"" Горячие клавиши
"-------------------------

menu Encoding.koi8-r :e ++enc=koi8-r<CR>
menu Encoding.windows-1251 :e ++enc=cp1251<CR>
menu Encoding.cp866 :e ++enc=cp866<CR>
menu Encoding.utf-8 :e ++enc=utf8 <CR>
map <F8> :emenu Encoding.<TAB>

menu Build.build :make<cr>
menu Build.rebuild :make clean<cr>:make<cr>
menu Build.clean :make clean<cr>
menu Build.test :make test<cr>
menu Build.custom :make
map <M-F9> :emenu Build.<tab>

set spelllang=ru
menu Spell.on :set spell<cr>
menu Spell.off :set nospell<cr>
menu Spell.language :set spelllang=
map <M-F8> :emenu Spell.<tAB>
map <C-F8> :set spell!<cr>

"-------------------------
"" Горячие клавиши
"-------------------------


" Выключаем ненавистный режим замены
imap <Ins> <c-o>i

" Пробел в нормальном режиме перелистывает страницы
" nmap <Space> <PageDown>
noremap <space> <esc>:set number!<cr> 

" CTRL-F для omni completion
imap <C-F> <C-X><C-O>

" C-c and C-v - Copy/Paste в "глобальный клипборд"
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

" Заставляем shift-insert работать как в Xterm
map <S-Insert> <MiddleMouse>

" C-y - удаление текущей строки - нах нада! стандартные лучше!!
" nmap <C-y> dd
" imap <C-y> <esc>ddi

nmap <F2> <esc>:w<cr>
imap <F2> <esc>:w<cr>i
vmap <F2> <esc>:w<cr>gv

nmap <S-F2> :wa<cr>
imap <S-F2> <esc>:wa<cr>i
vmap <S-F2> <esc>:wa<cr>gv

" F3 - просмотр ошибок (S-F9?)
" nmap <F3> :copen<cr>
" vmap <F3> <esc>:copen<cr>
" imap <F3> <esc>:copen<cr>

" F9 - "make" команда
map <F9> :make<cr>
vmap <F9> <esc>:make<cr>i
imap <F9> <esc>:make<cr>i

" C-F9 - rebuild команда
map <C-F9> :make<space>clean<space>compile<cr>
vmap <C-F9> <esc>:make<space>clean<space>compile<cr>i
imap <C-F9> <esc>:make<space>clean<space>compile<cr>i

" открыть окно результатов компиляции
imap <S-F9> <Esc>:copen<CR>
nmap <S-F9> :copen<CR>

" следующая ошибка
imap <C-F10> <Esc>:cn<CR>i
nmap <C-F10> :cn<CR>

" предыдущая ошибка
imap <S-F10> <Esc>:cp<CR>i
nmap <S-F10> :cp<CR>

" автодополнение по Control+Space
imap <C-Space> <C-N>

" вкл/выкл отображения найденных соответствий
imap <S-F1> <Esc>:set<Space>hls!<CR>a
nmap <S-F1> :set<Space>hls!<CR>

" , #perl # comments
map ,# :s/^/#/<CR>

" ,/ C/C++/C#/Java // comments
map ,/ :s/^/\/\//<CR>

" c++ java style comments
map ,* :s/^\(.*\)$/\/\* \1 \*\//<CR><Esc>:nohlsearch<CR>

" теряет выделение " but < and > are better! :)
" vmap <C-F1> :<<CR>gv " indent
" vmap <C-F2> :><CR>gv " unindent

" хреново работает...
" vmap <C-F3> :s/^\(\s*\)#/\1/<CR> " убираем # комментарии
" vmap <C-F4> :s/^\(\s*\)/\1#/<CR> " ставим # комментарии

" более привычные Page Up/Down, когда курсор остаётся в той же строке,
" (а не переносится в верх/низ экрана, как при стандартном PgUp/PgDown)
" Поскольку по умолчанию прокрутка по C-Y/D происходит на полэкрана,
" привязка делается к двойному нажатию этих комбинаций.
nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>

nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>

" tab shortcuts
let mapleader = ','
" This allows buffers to be hidden if you've modified a buffer.
" " This is almost a must if you wish to use buffers in this way.
set hidden
"
" " To open a new empty buffer
" " This replaces :tabnew which I used to bind to this mapping
map <leader>T :enew<cr>
"
" " Move to the next buffer
map <leader>l :bnext<CR>
"
" " Move to the previous buffer
map <leader>h :bprevious<CR>
"
" " Close the current buffer and move to the previous one
" " This replicates the idea of closing a tab
map <leader>bq :bp <BAR> bd #<CR>
"
" " Show all open buffers and their status
map <leader>bl :ls<CR>

"----------------------------------
" plugins
"----------------------------------


"----------------------------------
" аббревиатуры
"----------------------------------
:ab #b /********************************************************************* 
:ab #e  *********************************************************************/
:ab #d #define 
:ab #i #include



" Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

"Подсвечиваем все что можно подсвечивать
let python_highlight_all = 0 

