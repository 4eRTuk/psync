class StaticPagesController < ApplicationController
  def home
	@posts = Vpost.limit(5)
	@total = Vpost.count
	@bugs = open("http://dl.dropboxusercontent.com/s/509hk5wg3fjgfc4/buglist.txt").readlines
  end
  
  def about
  end
  
  def contact
  end
  
  def feedback
  @data
  @umail
  @name
	if params[:data].blank? || params[:umail].blank? || params[:name].blank?
		cookies[:name] = { value: params[:name], expires: 1.hour.from_now }
		cookies[:umail] = { value: params[:umail], expires: 1.hour.from_now }
		cookies[:data] = { value: params[:data], expires: 1.hour.from_now }
		flash.now[:error] = "Некоторые поля пустые!"
		render :contact
	else
		ContactMailer.feedback(params[:data], params[:umail], params[:name]).deliver
		flash[:success] = "Сообщение отправлено."
		cookies.delete :name
		cookies.delete :umail
		cookies.delete :data
		redirect_to contact_url
	end
  end
end
