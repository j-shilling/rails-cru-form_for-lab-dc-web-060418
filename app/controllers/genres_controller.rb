class GenresController < ApplicationController

    before_action :set_genre_by_id, only: [:show, :edit, :update]

    def show
    end

    def new
      @genre = Genre.new
    end

    def create
      @genre = Genre.create(genre_params)
      redirect_to genre_path(@genre)
    end

    def edit
    end

    def update
      @genre.update(genre_params)
      redirect_to genre_path(@genre)
    end

    private
      def set_genre_by_id
        @genre = Genre.find(params[:id])
      end

      def genre_params
        params.require(:genre).permit(:name)
      end

end
