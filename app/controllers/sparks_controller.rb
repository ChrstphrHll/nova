class SparksController < ApplicationController
  def index
    @sparks = Spark.all
  end

  def show
    @spark = Spark.find(params[:id])
  end
end
