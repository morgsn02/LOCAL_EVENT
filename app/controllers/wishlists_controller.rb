class WishlistsController < ApplicationController
  before_action :set_whishlist, only: [:destroy]

  def show
  end

  def new
    @whishlist = Whishlist.new
  end

  def create
    @event = Event.find(params[:event_id])
    @whishlist = Whishlist.new(whislist_params)
    @whishlist.event = @event

    @whishlist.user = current_user
    if @whishlist.save
      redirect_to whishlist_path(@whishlist)
    else
      render :new
    end
  end

  def destroy
    @whishlist.destroy
    redirect_to whishlist_path, status: :see_other
  end

  def my_whishlist
    @whishlists = Whishlist.where(user_id: current_user.id)
  end

  private

  def whishlist_params
    params.require(:whislist).permit()
  end

  def set_whishlist
    @whishlist = Whishlist.find(params[:id])
  end
end
