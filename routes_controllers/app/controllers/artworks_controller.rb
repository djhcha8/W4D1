class ArtworksController < ApplicationController
  def index
    artworks = Artwork.all
    render json: artworks
  end
  
  def create 
    artwork = Artwork.new(params[:artwork].permit(:title, :image_url, :artist_id))
    if artwork.save
      render json: artwork 
    else 
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end 
  end 
  
  def show
    artwork = Artwork.find(params[:id])
    render json: artwork
  end
  
  def destory
    artwork = Artwork.find(params[:id])
    artwork.destroy
    render json: artwork
  end
  
  def update
    artwork = Artwork.find(params[:id])
    if artwork.update(params[:artwork].permit(:title, :image_url, :artist_id))
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end
end