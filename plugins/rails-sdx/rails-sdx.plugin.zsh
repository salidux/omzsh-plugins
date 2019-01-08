## RSpec

# I use Bootsnap (https://github.com/Shopify/bootsnap) with
# config/boot.rb: require 'bootsnap/setup' if ENV["USE_BOOTSNAP"] == "true"
alias bes='USE_BOOTSNAP=true bundle exec rspec'
alias besf='USE_BOOTSNAP=true bundle exec rspec --only-failures'


## Rake

alias rdmtl='bundle exec rake db:migrate db:test:prepare factory_bot:lint'


## Vim
alias vat="vimcat"
