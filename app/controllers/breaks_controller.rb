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


  def update
    client_params = {
                      status: params[:status],
                      duration: params[:duration]
                      }

    response = HTTP.patch("http://localhost:3000/breaks/#{params[:id]}",
                form: client_params
                        )
    @break = response.parse
    redirect_to "/breaks/#{@break["id"]}"
  end

end
