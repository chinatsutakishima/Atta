class ToilesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @toiles = Toile.all
  end

  def show
    @toile = Toile.find(params[:id])
  end

  def new
    @toile = Toile.new
  end

  def create
    @toile = Toile.new(toile_params)
    @toile.user_id = current_user.id
    if @toile.save
      redirect_to toile_path(@toile), notice: "レシピを投稿しました。"
    else
      render :new
    end
  end


  def edit
    @toile = Toile.find(params[:id])
    if @toile.user != current_user
        redirect_to toiles_path, alert: "不正なアクセスです。"
    end
  end

  def update
   @toile = Toile.find(params[:id])
   if @toile.update(toile_params)
      redirect_to toile_path(@toile), notice: "レシピを更新しました。"
    else
      render :edit
    end
  end

  private
  def toile_params
    params.require(:toile).permit(:title, :body, :body2, :body3, :image)
  end
end
