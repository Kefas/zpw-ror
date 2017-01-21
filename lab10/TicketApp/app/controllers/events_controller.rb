class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(artist: params[:event][:artist], description: params[:event][:description], price_low: params[:event][:price_low], price_high: params[:event][:price_high], event_date: params[:event][:event_date])
    if @event.save
      flash[:notice] = 'Event został poprawnie stworzony.'
      redirect_to events_path
    else
      render :action => 'new'
    end
  end
end

