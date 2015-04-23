class PlacesController < ApplicationController


  def index
    @places=Place.all
  end

    def show
      @place=Place.find_by(:id=>params["id"])
      @reviews=Review.where(:rev_id=>params["id"])
    end

  def new

  end

  def delete
    Place.delete(params["id"])
    redirect_to "/places"
  end

  def edit
    @place= Place.find_by(:id=>params["id"])
  end

  def create
    plc = Place.new
    plc.title=params["title"]
    plc.url=params["url"]
    plc.price=params["price"]
    plc.description=params["description"]
    plc.save
    redirect_to "/places"
  end


  def update
    plc=Place.find_by(:id=>params["id"])
    plc.title=params["title"]
    plc.url=params["url"]
    plc.price=params["price"]
    plc.description=params["description"]
    plc.save
    redirect_to "/places/"+params["id"]
  end

  def review
    rev=Review.new
    rev.title=params["title"]
    rev.rev_id=params["id"].to_i
    rev.score=params["score"].to_i
    rev.description=params["description"]
    rev.save
    redirect_to "/places/"+params["id"]
  end
end