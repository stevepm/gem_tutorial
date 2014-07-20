require 'my_gem'
require 'vcr'
require 'webmock'

RSpec.configure do |config|
  VCR.configure do |c|
    c.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
    c.hook_into :webmock # or :fakeweb
  end
end
