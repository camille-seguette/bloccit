class AdvertisementController < ApplicationController
  def index
    @advertisement = Advertisement.all
  end

  def show
    @advertisement = Advertisement.find(params[:id])
  end

  def new
    @advertisement = Advertisement.new
  end

  def create
    @advertisement = Advertisement.new
    @advertisement.title = params [:advertisement][:title]
    @advertisement.body = params [:advertisement][:body]
    @advertisement.price = params [:advertisement][:price]
  end
end
