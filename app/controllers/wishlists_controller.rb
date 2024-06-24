class WishlistsController < ApplicationController
  before_action :set_wishlist, only: [:destroy]
  before_action :authenticate_user!

  def index
    user = current_user
    @wishlists = Wishlist.where(user_id: user.id)
  end

  def show
  end

  def create
    @event = Event.find(params[:event_id])
    @wishlist = Wishlist.new
    @wishlist.user = current_user
    @wishlist.event = @event

    @wishlist.user = current_user
    if @wishlist.save
      redirect_to wishlists_path
    else
      redirect_to event_path(@event), notice: 'vous avez déjà enregistré cet évènement'
    end
  end

  def destroy
    @wishlist.destroy
    redirect_to wishlist_path, status: :see_other
  end

  def my_wishlist
    @wishlists = Wishlist.where(user_id: current_user.id)
  end

  private

  def wishlist_params
    params.require(:wishlist).permit()
  end

  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end
end
