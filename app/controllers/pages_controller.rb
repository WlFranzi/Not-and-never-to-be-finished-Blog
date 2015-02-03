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
  ActionMailer::Base.mail(:from => @email, 
      :to => 'franziska.wittleder@gmail.com', 
      :subject => "A new contact form message from #{@name}", 
      :body => @message).deliver
end
  
end
