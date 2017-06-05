require 'rails_helper'

RSpec.describe "links API", type: :request do
  describe 'GET hot links' do
    it 'retrieves top ten links' do
      create_list(:link, 15)

      get '/api/v1/hot_links'
      
      expect(response).to be_success

      links = JSON.parse(response.body)
      expect(links.count).to eq 10
    end
  end

  describe 'POST hot links' do
    it 'adds link to db' do
      expect(Link.count).to eq 0

      link = { link: {url: 'https://google.com'} }

      post '/api/v1/links', link

      expect(response).to be_success
      expect(Link.count).to eq 1
    end
  end
end
