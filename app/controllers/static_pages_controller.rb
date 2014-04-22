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
end
