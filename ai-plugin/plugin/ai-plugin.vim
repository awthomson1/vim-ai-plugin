" Description:  A Vim plugin to apply ChatGPT prompts to the text
" Last Change:  2023/04/02
" Maintainer:   Akex Thomson

if exists("g:loaded_ai_plugin")
    finish
endif
let g:loaded_ai_plugin = 1

command! -nargs=0 AI call s:AI()

function! s:AI(...)
	let prompt = input("Enter prompt: ")
	let overwrite = input("[A]ppend or [O]verwrite [A]: ")
	echo "\nQuerying ChatGPT..."
	let body_text = getline(1, '$')
	let body1 = join(body_text,' ')
	let body2 = substitute(body1, '"', '\\"', 'g')
	let command = 'ai "'.prompt.'\n-----------\n'.body2.'"'
	let my_var = system(command)
	let x = split(my_var,'\n')
	if stridx(overwrite, "O")==0
		:%delete
	endif
	for xx in x
		call append('$', xx)
	endfor
endfunction
