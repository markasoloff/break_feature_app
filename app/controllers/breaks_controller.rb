class BreaksController < ApplicationController


  def index
    @breaks = Break.all
    render "index.html.erb"
  end

  def show
    response = HTTP.get("http://localhost:3000/breaks/#{params[:id]}")
    @break = Break.find_by(params[:id])
    render 'show.html.erb'
  end


  # def update
  #   client_params = {
  #                     title: params[:title],
  #                     prep_time: params[:prep_time],
  #                     ingredients: params[:ingredients],
  #                     directions: params[:directions],
  #                     image_url: params[:image_url]
  #                     }


  #   response = HTTP.patch("http://localhost:3000/api/recipes/#{params[:id]}",
  #               form: client_params
  #                       )
  #   @recipe = response.parse
  #   redirect_to "/client/recipes/#{ @recipe["id"]}"
  # end

end
