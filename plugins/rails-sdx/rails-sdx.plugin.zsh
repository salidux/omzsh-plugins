## RSpec

# I use Bootsnap (https://github.com/Shopify/bootsnap) with
# config/boot.rb: require 'bootsnap/setup' if ENV["USE_BOOTSNAP"] == "true"
# spec/rails_helper.rb: require "simplecov" unless ENV["NOCOV"] == "1"
alias bes='NOCOV=1 USE_BOOTSNAP=true bundle exec rspec --format documentation'
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

# Alias to create a new branch using the JIRA ticket (from the URL) as prefix of the branch name
alias gcjb='function _git_checkout_jira() { branch_name="`basename $1`-$2"; git checkout -b $branch_name; }; _git_checkout_jira'


## Rails

# https://scoutapp.com/devtrace
alias rs="USE_BOOTSNAP=false SCOUT_DEV_TRACE=false bundle exec rails server"
alias rsw="WEBPACK_DEV_SERVER_LIVERELOAD=false overmind s -l rails,webpack"
alias rc='USE_BOOTSNAP=true rails console'

## Stripe environment
alias stripehooks='stripe listen --forward-to http://localhost:3000/stripe_support/events'
