class EventsController < ApplicationController
  #before_action :authenticate_user!, except: %i[index show]
  before_action :set_event, only: %i[show edit update destroy]

  def index
    @events = Event.all
    if params[:city].present?
      @events = @events.where(city: params[:city])
    end

    if params[:category].present?
      @events = @events.where(category_id: params[:category])
    end

    if params[:date].present?
      @events = @events.where(start_day: params[:date])
    end

    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window: render_to_string(partial: "popup", locals: { event: event })
      }
    end
  end

  def show
    @event = Event.find(params[:id])
    @events = Event.where(id: params[:id])
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window: render_to_string(partial: "popup", locals: { event: event })
      }
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user

    if @event.save!
      redirect_to events_path(@event)
    else
      render :new
    end
  end

  def edit
    #@event = Event.find(params[:id])
  end

  def update
    #@event = Event.find(params[:id])
    event.update!(event_params)
    redirect_to events_path(@event)
  end

  def destroy
    #@event = Event.find(params[:id])
    @event.destroy
    redirect_to events_my_events_path, status: :see_other
  end

  def my_events
    @events = Event.where(user_id: current_user)
  end

  private

  def event_params
    params.require(:event).permit(:title, :start_day, :end_day, :hour, :minute,
                                  :address, :city, :cost, :link_event, :content)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
