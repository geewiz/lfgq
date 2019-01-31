class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.create(secure_params)
    redirect_to event
  end

  private

  def secure_params
    params.require(:event).permit(:title, :description, :date, :time)
  end
end
