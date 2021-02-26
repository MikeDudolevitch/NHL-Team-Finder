#Tie all project files together, require relevant Gems
require 'pry'
require 'net/http'
require 'open-uri'
require 'json'
require 'tty-prompt'

require_relative '../lib/api'
require_relative '../lib/cli'
require_relative '../lib/team'
require 'bundler'
Bundler.require

PROMPT = TTY::Prompt.new(active_color: :red)