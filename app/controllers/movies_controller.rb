class MoviesController < ApplicationController
  def show_nationalgeographicdocumentary
    @movie = {
       title: 'The Living Planet - The Sky Above',
       video_id: 'gAUsvm_jcJU'
     }
  end

  def new
    @movie = Movie.new
  end

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(params[:movie].permit(:title, :text))
      redirect_to @movie
    else
      render 'edit'
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to movies_path
  end

  def create
    @movie = Movie.new(params[:movie].permit(:title, :text))

    if @movie.save
      redirect_to @movie
    else
      render 'new'
    end 
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :text)
  end
end