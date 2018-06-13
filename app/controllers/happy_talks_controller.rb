class HappyTalksController < ApplicationController

  before_action :set_happy_talk, only: [:show, :edit, :update, :destroy]

  def index
    @happy_talks = HappyTalk.all
  end

  def new
    if params[:back]
      @happy_talk = HappyTalk.new(happy_talk_params)
    else
      @happy_talk = HappyTalk.new
    end
  end

  def create
    @happy_talk = HappyTalk.new(happy_talk_params)
    if @happy_talk.save
      redirect_to new_happy_talk_path, notice: "happy talkを作成しました"
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end

  def update
    if @happy_talk.update(happy_talk_params)
      redirect_to happy_talks_path, notice: "happy talkを編集しました"
    else
      render 'edit'
    end
  end

  def destroy
    @happy_talk.destroy
    redirect_to happy_talks_path, notice:"happy talkを削除しました"
  end

  def confirm
    @happy_talk = HappyTalk.new(happy_talk_params)
    render :new if @happy_talk.invalid?
  end

  private

  def happy_talk_params
    params.require(:happy_talk).permit(:content)
  end

  def set_happy_talk
    @happy_talk = HappyTalk.find (params[:id])
  end
end
