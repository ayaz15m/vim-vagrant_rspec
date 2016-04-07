" local variables
let s:file = expand('%:p:.')

" local functions
function! s:is_spec()
  return reverse(split(expand('%:p:.:t'), '_'))[0] == 'spec.rb'
endfunction

function! s:run_rspec(command)
  if s:is_spec()
    execute "!vagrant ssh -c '".a:command."'"
  else
    echo 'Retry from spec file'
  endif
endfunction

" rspec functions
function! RspecAll()
  call s:run_rspec('bundle exec rspec')
endfunction

function! RspecFile()
  call s:run_rspec('bundle exec rspec '.s:file)
endfunction

function! RspecLine()
  call s:run_rspec('bundle exec rspec '.s:file.':'.line('.'))
endfunction
