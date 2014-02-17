class MoviesController < ApplicationController
  def show_nationalgeographicdocumentary
    @movie = {
       title: 'The Living Planet - The Sky Above',
       video_id: 'gAUsvm_jcJU'
     }
  end

  def new
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.new(movie_params)

    @movie.save
    redirect_to @movie 
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :text)
  end
end