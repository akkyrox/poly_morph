class EventsController < ApplicationController

  def index
    @event = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(params[:event])
  end

end
