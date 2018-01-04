#!/usr/bin/env fish

function todoist_close
  command todoist list | fzf --reverse --header='CloseTask' -m | cut -d ' ' -f 1 | tr '\n' ' ' | read -l tasks
  
  set cmd "command todoist close "
  if [ (string length "$tasks") -ne 0 ]
      set cmd "$cmd""$tasks"
      echo $cmd
      eval $cmd
  end
end
