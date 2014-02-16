class MoviesController < ApplicationController
  def show_nationalgeographicdocumentary
    @movie = {
       title: 'The Living Planet - The Sky Above',
       video_id: 'gAUsvm_jcJU'
     }
  end

end