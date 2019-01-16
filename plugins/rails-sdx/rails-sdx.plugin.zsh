## RSpec

# I use Bootsnap (https://github.com/Shopify/bootsnap) with
# config/boot.rb: require 'bootsnap/setup' if ENV["USE_BOOTSNAP"] == "true"
# spec/rails_helper.rb: require "simplecov" unless ENV["NOCOV"] == "1"
alias bes='NOCOV=1 USE_BOOTSNAP=true bundle exec rspec'
alias besf='NOCOV=1 USE_BOOTSNAP=true bundle exec rspec --only-failures'
alias be='USE_BOOTSNAP=true bundle exec'


## Rake
alias rmpl='bundle exec rake db:migrate db:test:prepare factory_bot:lint'


## Vim
alias vat="vimcat"


## GIT
alias gll="git --no-pager log --pretty=format:'%C(yellow)%h %C(cyan)%ad %C(blue)<%ae>%C(auto): %s' --date=iso8601 -n17"
