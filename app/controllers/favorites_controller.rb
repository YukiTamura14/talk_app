class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(happy_talk_id: params[:happy_talk_id])
    redirect_to happy_talks_url, notice: "#{favorite.happy_talk.user.name}さんのHappy Talkをお気に入り登録しました"
  end

  def index
    @favorite_happy_talks = current_user.favorites
    #favorite = current_user.favorites.find_by(id: params[:id]).destroy
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to happy_talks_url, notice: "#{favorite.happy_talk.user.name}さんのHappy Talkをお気に入り解除しました"
  end
end
