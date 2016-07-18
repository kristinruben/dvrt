class TwoController < ApplicationController
  def index
    @store_size = StoreSize.all
    @stores = Store.all
  end
end
