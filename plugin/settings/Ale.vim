" Set this option to change lint options
let g:ale_verilog_verilator_options = '-Wall -sv --lint-only'

let b:ale_linters = {'verilog': ['verilator'],
\                   'systemverilog': ['verilator'],
\                   'cpp': ['g++'],
\                   'c': ['gcc'],
\}

"Use these options to specify what text should be used for signs
set fenc=
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'

"navigate between errors quickly
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-J> <Plug>(ale_next_wrap)

