class VpostsController < ApplicationController
	before_action :signed_in_user, except: [:show, :index]
  
  def index
	@vposts = Vpost.paginate(page: params[:page], per_page: 2)
  end
  
  def show
	@post = Vpost.find(params[:id])
  end
  
  def new
	@vpost = Vpost.new
  end
  
  def create
	@vpost = Vpost.new(vpost_params)
	if @vpost.save
		redirect_to @vpost
	else
		render 'new'
	end
  end
  
  def edit
	@vpost = Vpost.find(params[:id])
  end
  
  def update
	@vpost = Vpost.find(params[:id])
	if @vpost.update_attributes(vpost_params)
		redirect_to @vpost
	else
		render 'edit'
	end
  end
  
  def destroy
	Vpost.find(params[:id]).destroy
	flash[:success] = "Пост удален."
	redirect_to vposts_url
  end
  
  private
  
	def signed_in_user
		store_location
		redirect_to signin_url, notice: "Требуется авторизация" unless signed_in?
	end
	
	def vpost_params
		params.require(:vpost).permit(:title, :content, :vlink)
	end
end
