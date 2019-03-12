## RSpec

# I use Bootsnap (https://github.com/Shopify/bootsnap) with
# config/boot.rb: require 'bootsnap/setup' if ENV["USE_BOOTSNAP"] == "true"
# spec/rails_helper.rb: require "simplecov" unless ENV["NOCOV"] == "1"
alias bes='NOCOV=1 USE_BOOTSNAP=true bundle exec rspec'
alias besf='NOCOV=1 USE_BOOTSNAP=true bundle exec rspec --only-failures'
alias be='USE_BOOTSNAP=true bundle exec'
alias ber='USE_BOOTSNAP=true bundle exec rake'


## Rake
alias rdmtpfl='bundle exec rake db:migrate db:test:prepare factory_bot:lint'


## Vim
alias vat="vimcat"


## GIT
alias gll="git --no-pager log --pretty=format:'%C(yellow)%h %C(cyan)%ad %C(blue)<%ae>%C(auto): %s' --date=iso8601 -n17"
alias gfix="function _git_commit_fixup(){ git commit -v --fixup=$1 };_git_commit_fixup"
alias grbmi="git rebase -i --autosquash master"



## Rails

# https://scoutapp.com/devtrace
alias rs="USE_BOOTSNAP=true SCOUT_DEV_TRACE=true bundle exec rails server"
