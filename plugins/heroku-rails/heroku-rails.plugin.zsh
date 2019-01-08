alias hr='heroku run'
alias hrc='heroku run rails console'
alias hrr='heroku run rails runner'


# Shows the default target application if no `-a` or `--app` flag is used
prompt_heroku() {
  local heroku_app="$HEROKU_APP"
  if [[ -n $heroku_app ]]; then
    prompt_segment 'magenta' '' "\u04c3 $heroku_app"
  fi
}

# Sets the HEROKU_APP env var and adds a prompt segment
function set_heroku_app() {
  export HEROKU_APP=$1

  if [[ $ZSH_THEME = "agnoster" ]]; then
    build_prompt() {
      RETVAL=$?
      prompt_status
      prompt_virtualenv
      prompt_context
      prompt_dir
      prompt_git
      prompt_bzr
      prompt_hg
      prompt_heroku
      prompt_end
    }
  fi
}
alias happ=set_heroku_app
