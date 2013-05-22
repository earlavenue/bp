class ReadingsController < ApplicationController

  def index
    @readings = Reading.all
  end

  def show
    @reading = Reading.find_by_id(params[:id])
  end

  def new
    @reading = Reading.new
  end

  def create
    @reading = Reading.new(params[:reading])
    if @reading.save
            redirect_to readings_url
          else
      render 'new'
    end
  end

  def edit
    @reading = Reading.find_by_id(params[:id])
  end

  def update
    @reading = Reading.new(params[:reading])

    if @reading.save
            redirect_to readings_url
          else
      render 'edit'
    end
  end

  def destroy
    @reading = Reading.find_by_id(params[:id])
    @reading.destroy
        redirect_to readings_url
      end
end
