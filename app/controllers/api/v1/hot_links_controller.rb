class Api::V1::HotLinksController < ApplicationController
  def index
    render json: Link.hot 
  end
end
