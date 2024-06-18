class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
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
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save!
      redirect_to events_path
    end
  end

  def edit
  end

  def update
    @event.update!(event_params)
    redirect_to events_path, status: :see_other
  end
  private

  def event_params
    params.require(:event).permit(:title)
  end
end
