class PagesController < ApplicationController
  def home
  end

  def new
    @event = Event.new
  end
end
