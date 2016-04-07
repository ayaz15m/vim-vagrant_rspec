" local variables
let s:file = expand('%:p:.')

" local functions
function! s:is_spec()
  return reverse(split(expand('%:p:.:t'), '_'))[0] == 'spec.rb'
endfunction

function! s:is_vagrant()
  return filereadable('Vagrantfile')
endfunction

function! s:run_rspec(command)
  if s:is_spec() && s:is_vagrant()
    execute "!vagrant ssh -c '".a:command."'"
  elseif s:is_spec()
    execute '!'.a:command
  else
    echo 'Retry from spec file'
  endif
endfunction

" rspec functions
function! vagrant_rspec#Rspecall()
  call s:run_rspec('bundle exec rspec')
endfunction

function! vagrant_rspec#Rspecfile()
  call s:run_rspec('bundle exec rspec '.s:file)
endfunction

function! vagrant_rspec#Rspecline()
  call s:run_rspec('bundle exec rspec '.s:file.':'.line('.'))
endfunction
