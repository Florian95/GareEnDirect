require 'GareEnDirect/version'
require 'excon'
require 'nokogiri'

module GareEnDirect
  autoload :Stations, 'GareEnDirect/stations'
  autoload :HttpClient, 'GareEnDirect/http_client'
  autoload :Errors, 'GareEnDirect/errors'
end
