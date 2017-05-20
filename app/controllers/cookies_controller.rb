class CookiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :store]

  def index
    @cookies = Cookie.all
  end

  def show
    @cookie = Cookie.find(params[:id])
  end

  def new
    @cookie = Cookie.new
    3.times { @cookie.pictures.build }
  end

  def create
    @cookie = Cookie.new(cookie_params)

    if @cookie.save

      flash[:success] = 'Cookie Successfully Created!'
      redirect_to '/cookies'
    else
      render action: 'new'
    end
  end

  def edit
    @cookie = Cookie.find(params[:id])
    3.times { @cookie.pictures.build }
  end

  def update
    @cookie = Cookie.find(params[:id])

    if @cookie.update_attributes(cookie_params)
      flash[:success] = 'Cookie Successfully Edited!'
      redirect_to "/cookies/#{@cookie.id}"
    else
      render action: 'edit'
    end
  end

  def destroy
    @cookie = Cookie.find(params[:id])
    @cookie.destroy

    flash[:danger] = 'Cookie Successfully Deleted!'
    redirect_to '/cookies'
  end

  def store
  end

  private

  def cookie_params
    params.require(:cookie).permit(:title,
                                   :price,
                                   :description,
                                   pictures_attributes: [:_destroy, :id, :image, :cookie_id])
  end
end
