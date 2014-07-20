require "my_gem/version"
require 'nokogiri'
require 'open-uri'

class MyGem
  def initialize(url)
    @url = Nokogiri::HTML(open(url))
  end

  def title
    @url.title
  end
end
