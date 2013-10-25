let s:save_cpo = &cpo
set cpo&vim


let s:data = {}


function! s:repository_name(repository)
	return fnamemodify(a:repository, ':t')
endfunction

function! bundle_preset#data#get(repository)
  let name = s:repository_name(a:repository)
	return get(s:data, name, {})
endfunction


" C {{{
let s:data['camelcasemotion'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'autoload': {
			\ 			'mappings': '<Plug>CamelCaseMotion_'
			\ 		}
			\ 	}
			\ }
" }}}
" J {{{
let s:data['jedi-vim'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'autoload': {
			\ 			'filetypes': 'python'
			\ 		}
			\ 	}
			\ }
" }}}
" O {{{
let s:data['open-browser'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'autoload': {
			\ 			'mappings': '<Plug>(openbrowser-'
			\ 		}
			\ 	}
			\ }
" }}}
" R {{{
let s:data['restart.vim'] = {
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
let s:data['thumbnail.vim'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'autoload': {
			\ 			'commands': 'Thumbnail'
			\ 		}
			\ 	}
			\ }
" }}}
" U {{{
let s:data['unite-colorscheme'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'gui': 1,
			\ 		'autoload': {
			\ 			'unite_sources': 'colorscheme'
			\ 		}
			\ 	}
			\ }
let s:data['unite-font'] = {
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
let s:data['vesting'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'autoload': {
			\ 			'unite_sources': 'vesting'
			\ 		}
			\ 	}
			\ }
let s:data['vimproc'] = {
			\ 	'lazy': 0,
			\ 	'options': {
			\ 		'build': {
			\ 			'cygwin': 'make -f make_cygwin.mak',
			\ 			'mac': 'make -f make_mac.mak',
			\ 			'unix': 'make -f make_unix.mak',
			\ 		}
			\ 	}
			\ }
let s:data['vim-qfreplace'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'autoload': {
			\ 			'filetypes': ['qf', 'unite']
			\ 		}
			\ 	}
			\ }
let s:data['vim-ref'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'autoload': {
			\ 			'commands': 'Ref'
			\ 		}
			\ 	}
			\ }
" }}}
" W {{{
let s:data['w3m.vim'] = {
			\ 	'lazy': 1,
			\ 	'options': {
			\ 		'autoload': {
			\ 			'commands': ['W3m', 'W3mTab', 'W3mSplit', 'W3mVSplit']
			\ 		}
			\ 	}
			\ }
" }}}


let &cpo = s:save_cpo
