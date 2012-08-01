class PagesController < ApplicationController
  
  def landing
    if user_signed_in?
      redirect_to :dashboard
    else
      render :layout => 'landing'
    end
  end

end
