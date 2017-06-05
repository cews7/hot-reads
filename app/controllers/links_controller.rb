class LinksController < ApplicationController
  def index
    @links = Link.hot 
  end
end
