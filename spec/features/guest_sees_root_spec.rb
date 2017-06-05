require 'rails_helper'

describe 'as a guest on root page' do
  it 'I can see a list of top ten links' do
    create_list(:link, 10)

    visit root_path

    Link.hot.each do |link|
      expect(page).to have_content "#{link.url}"
    end
  end
end
