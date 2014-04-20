class StaticPagesController < ApplicationController
  def home
	@posts = Vpost.limit(5)
	@total = Vpost.count
  end
  
  def about
  end
  
  def contact
  end
end
