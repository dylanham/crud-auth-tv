class TvsController < ApplicationController
  before_action :set_tv, only:[:show, :edit, :update]

  def index
    @tvs = Tv.all
  end

  def show
  end

  def new
    @tv = Tv.new
  end

  def create
    tv = Tv.new(tv_params)
    if tv.save
      flash[:notice] = "You created a new TV"
      redirect_to tv_path(tv)
    else
      @tv = tv
      render :new
    end
  end

  def edit
  end

  def update
    if @tv.update(tv_params)
      flash[:notice] = "You updated your tv"
      redirect_to tv_path(@tv)
    else
      render :edit
    end
  end

  def destroy
    tv = Tv.find(params[:id])
    tv.destroy
    flash[:notice] = "You deleted your tv"
    redirect_to tvs_path
  end

  private

  def tv_params
    params.require(:tv).permit(:brand, :size)
  end

  def set_tv
    @tv = Tv.find(params[:id])
  end

end
