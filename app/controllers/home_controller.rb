class HomeController < ApplicationController
  def index
    @store_size = StoreSize.all
  end

end
