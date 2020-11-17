class GenresController < ApplicationController
    def show
        @genre = Genre.find(params[:id])
    end

    def index
        @genres = Genre.all
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new
        @genre.name = params[:name]
        @genre.save
        redirect_to genre_path(@genre)
    end

    def update
        @genre.update(params.require(:genre).permit(:name))
        redirect_to genre_path(@genre)
    end

end
