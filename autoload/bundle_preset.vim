let s:save_cpo = &cpo
set cpo&vim


function! bundle_preset#rc()
	command! -nargs=1 PresetBundle call bundle_preset#bundle(<args>)
endfunction

function! s:repository_name(repository)
	return fnamemodify(a:repository, ':t')
endfunction

function! s:bundle(repository)
	let name = s:repository_name(a:repository)
	let data = bundle_preset#data#get()
	return get(data, name, {})
endfunction

function! bundle_preset#is_lazy(repository)
	let bundle = s:bundle(a:repository)
	return empty(bundle) ? 0 : bundle.lazy
endfunction

function! bundle_preset#options(repository)
	let bundle = s:bundle(a:repository)
	return empty(bundle) ? {} : bundle.options
endfunction

function! bundle_preset#bundle(repository)
	let command = bundle_preset#is_lazy(a:repository)
				\ ? 'NeoBundleLazy'
				\ : 'NeoBundle'

	let args = ['"' . a:repository . '"']
	let opts = bundle_preset#options(a:repository)
	if !empty(opts)
		call add(args, string(opts))
	endif

	execute printf('%s %s', command, join(args, ', '))
endfunction


let &cpo = s:save_cpo
