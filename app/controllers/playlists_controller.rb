class PlaylistsController < ApplicationController

  def show
    @playlist = Playlist.find(params[:id])
    @songs = @playlist.songs
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)
    @playlist.user_id = current_user.id
    if @playlist.save
      flash.notice = "#{@playlist.name} has been created"
      redirect_to playlist_path(@playlist.id)
    else
      render :new
    end

  end

  private

  def playlist_params
    params.require(:playlist).permit(:name)
  end
end
