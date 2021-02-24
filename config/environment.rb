#Tie all project files together, require relevant Gems
require 'pry'
require 'net/http'
require 'open-uri'
require 'json'
#NOTE TO SELF: IF I CHANGE MY PROJECT IDEA, REMEMBER TO UPDATE THE NAME OF HOCKEY.RB IN HERE!
require_relative '../lib/api'
require_relative '../lib/cli'
require_relative '../lib/charts'
require 'bundler'
Bundler.require