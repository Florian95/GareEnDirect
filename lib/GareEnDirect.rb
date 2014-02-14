require 'GareEnDirect/version'
require 'excon'
require 'nokogiri'

module GareEnDirect
  autoload :Gares, 'GareEnDirect/gares'
  autoload :HttpClient, 'GareEnDirect/http_client'
end
