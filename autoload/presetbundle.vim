let s:save_cpo = &cpo
set cpo&vim


function! presetbundle#rc()
	command! -nargs=1 PresetBundle call presetbundle#bundle(<args>)
endfunction

function! s:repository_name(repository)
	return fnamemodify(a:repository, ':t')
endfunction

function! s:bundle(repository)
	let name = s:repository_name(a:repository)
	let info = presetbundle#info#get()
	return get(info, name, {})
endfunction

function! presetbundle#is_lazy(repository)
	let bundle = s:bundle(a:repository)
	return empty(bundle) ? 0 : bundle.lazy
endfunction

function! presetbundle#options(repository)
	let bundle = s:bundle(a:repository)
	return empty(bundle) ? {} : bundle.options
endfunction

function! presetbundle#bundle(repository)
	let command = presetbundle#is_lazy(a:repository)
				\ ? 'NeoBundleLazy'
				\ : 'NeoBundle'

	let args = ['"' . a:repository . '"']
	let opts = presetbundle#options(a:repository)
	if !empty(opts)
		call add(args, string(opts))
	endif

	execute printf('%s %s', command, join(args, ', '))
endfunction


let &cpo = s:save_cpo
