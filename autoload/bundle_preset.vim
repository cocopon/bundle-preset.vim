let s:save_cpo = &cpo
set cpo&vim


function! bundle_preset#rc()
	command! -nargs=1 PresetBundle call bundle_preset#bundle(<args>)
endfunction

function! bundle_preset#is_lazy(repository)
	let package = bundle_preset#data#get(a:repository)
	return empty(package) ? 0 : package.lazy
endfunction

function! bundle_preset#options(repository)
	let package = bundle_preset#data#get(a:repository)
	return empty(package) ? {} : package.options
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
