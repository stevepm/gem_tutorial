require 'spec_helper'

describe MyGem do
  it 'queries a website and returns the title' do
    VCR.use_cassette('/lib/my_gem/google') do
      google = MyGem.new("http://www.google.com")
      expect(google.title).to eq("Google")
    end
  end
end