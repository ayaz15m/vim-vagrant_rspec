function! vagrant-rspec#Rspecall()
  execute "!vagrant ssh -c 'bundle exec rspec'"
endfunction

function! vagrant-rspec#Rspecfile()
  let rspecfile = expand('%:p:.')
  let systemcmd = join(['!vagrant ssh -c "', 'bundle exec rspec ', rspecfile, '"'], '')
  execute systemcmd
endfunction

function! vagrant-rspec#Rspecline()
  let rspecfile = join([expand('%:p:.'), line('.')], ':')
  let systemcmd = join(['!vagrant ssh -c "', 'bundle exec rspec ', rspecfile, '"'], '')
  execute systemcmd
endfunction

