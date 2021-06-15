class SongsController < ApplicationController

  def new
    @song = Song.new
    @playlist = Playlist.find(params[:id])
  end

  def create
    @song = Song.new(song_params)
    @playlist = Playlist.find(params[:id])
    @song.playlist_id = @playlist.id
    if @song.save
      flash.notice = "#{@song.title} has been added to #{@playlist.name}"
      redirect_to home_path
    else
      render :new
    end
  end

  private

  def song_params
    params.require(:song).permit(:playlist_id, :artist, :title)
  end

end
