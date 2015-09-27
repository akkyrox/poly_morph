class EventsController < ApplicationController

  def index
    @event = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    redirect_to @event
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :venue)
  end

end
