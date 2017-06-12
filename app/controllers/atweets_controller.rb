class AtweetsController < ApplicationController
  before_action :set_atweet, only: [:edit, :update, :destroy]
  def index
    @atweet = Atweet.all
  end

  def new
    if params[:back]
      @atweet = Atweet.new(atweet_params)
    else
      @atweet = Atweet.new
    end
  end

  def create
    @atweet = Atweet.create(atweet_params)
    if @atweet.save
      redirect_to atweets_path, notice: "つぃーとしました！"
    else
      render 'new'
    end
  end

  def edit
    @atweet = Atweet.find(params[:id])
  end

  def update
    @atweet = Atweet.find(params[:id])
    @atweet.update(atweet_params)
    redirect_to atweets_path, notice: "つぃーとを更新しました！"
  end

  def destroy
    @atweet = Atweet.find(params[:id])
    @atweet.destroy
    redirect_to atweets_path, notice: "つぃーとを削除しました！"
  end

  def confirm
    @atweet = Atweet.new(atweet_params)
    render :new if @atweet.invalid?
  end

  private
    def atweet_params
      params.require(:atweet).permit(:content)
    end

    def set_atweet
      @atweet = Atweet.find(params[:id])
    end

end