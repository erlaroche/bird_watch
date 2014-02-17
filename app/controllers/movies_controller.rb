class MoviesController < ApplicationController
  def show_nationalgeographicdocumentary
    @movie = {
       title: 'The Living Planet - The Sky Above',
       video_id: 'gAUsvm_jcJU'
     }
  end

  def new
  end

  def create
    render text: params[:movie].inspect  
  end

end