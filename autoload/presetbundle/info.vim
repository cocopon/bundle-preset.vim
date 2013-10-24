let s:save_cpo = &cpo
set cpo&vim


let s:info = {}


function! presetbundle#info#get()
	return s:info
endfunction


" C {{{
let s:info['camelcasemotion'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'mappings': '<Plug>CamelCaseMption_'
			\ 	}
			\ }
" }}}
" J {{{
let s:info['jedi-vim'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'autoload': {
			\ 			'filetypes': 'python'
			\ 		}
			\ 	}
			\ }
" }}}
" O {{{
let s:info['open-browser'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'mappings': '<Plug>(openbrowser-'
			\ 	}
			\ }
" }}}
" R {{{
let s:info['restart.vim'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'gui': 1,
			\ 		'autoload': {
			\ 			'commands': 'Restart'
			\ 		}
			\ 	}
			\ }
" }}}
" T {{{
let s:info['thumbnail.vim'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'autoload': {
			\ 			'commands': 'Thumbnail'
			\ 		}
			\ 	}
			\ }
" }}}
" U {{{
let s:info['unite-colorscheme'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'gui': 1,
			\ 		'autoload': {
			\ 			'unite_sources': 'colorscheme'
			\ 		}
			\ 	}
			\ }
let s:info['unite-font'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'gui': 1,
			\ 		'autoload': {
			\ 			'unite_sources': 'font'
			\ 		}
			\ 	}
			\ }
" }}}
" V {{{
let s:info['vesting'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'autoload': {
			\ 			'unite_sources': 'vesting'
			\ 		}
			\ 	}
			\ }
let s:info['vimproc'] = {
			\ 	'lazy': 0,
			\ 	'options': {
			\ 		'build': {
			\ 			'cygwin': 'make -f make_cygwin.mak',
			\ 			'mac': 'make -f make_mac.mak',
			\ 			'unix': 'make -f make_unix.mak',
			\ 		}
			\ 	}
			\ }
let s:info['vim-qfreplace'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'filetypes': ['unite', 'quickfix']
			\ 	}
			\ }
let s:info['vim-ref'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'autoload': {
			\ 			'commands': 'Ref'
			\ 		}
			\ 	}
			\ }
" }}}
" W {{{
let s:info['w3m.vim'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'autoload': {
			\ 			'commands': ['W3m', 'W3mTab', 'W3mSplit', 'W3mVSplit']
			\ 		}
			\ 	}
			\ }
" }}}


let &cpo = s:save_cpo
