class Api::V1::LinksController < ApplicationController
  def create
    @link = Link.find_or_initialize_by(link_params)
    if @link.id
      link.update(read_total: link.read_total + 1)
      render json: link, status: 201
    else
      render json: link.errors.full_messages, status: 400
    end
  end

  private

  def link_params
    params.require(:link).permit(:url)
  end
end
