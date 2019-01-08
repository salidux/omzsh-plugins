## RSpec

# I use Bootsnap (https://github.com/Shopify/bootsnap) with
# config/boot.rb: require 'bootsnap/setup' if ENV["USE_BOOTSNAP"] == "true"
alias ber='USE_BOOTSNAP=true bundle exec rspec'
alias berf='USE_BOOTSNAP=true bundle exec rspec --only-failures'


## Rake

alias rdmtl='bundle exec rake db:migrate db:test:prepare factory_bot:lint'
