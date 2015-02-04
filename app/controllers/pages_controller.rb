class PagesController < ApplicationController
  def home
  end

  def what
  end

  def about
  end

  def contact
  end

  def blog
  end

def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  UserMailer.contact_form(@email, @name, @message).deliver
end
  
end
