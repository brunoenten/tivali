class CatsController < ApplicationController
  def index
    @cats = Cat.where(creator: session[:userinfo]['sub'])
  end

  def new
    @cat = Cat.new
  end
end
