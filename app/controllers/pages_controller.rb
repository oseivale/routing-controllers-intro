class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]
  def welcome
    @header = "This is the welcome page"
  end

  def about
    @header = "This is the about page"
  end

  def contest
    # @header = "This is the contest page"
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
  end

  def kitten
    # set_kitten_url
  end

  def kittens
    # set_kitten_url
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://www.pexels.com/#{requested_size}/#{requested_size}/search/cats"

  end

  def secrets
    # params[:magic_word] == "Hello"
    if params[:magic_word] == "Hello"
      # redirect_to "/secrets/:magic_word"
    else
      redirect_to "/welcome"
      flash[:alert] = "Sorry, you're not authorized to see this page!"
    end
  end


end
