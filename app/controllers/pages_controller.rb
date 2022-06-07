class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
    @listings = Listing.all
    @users = User.all
  end

  # def new
  #   @event = Event.find(params[:event_id])
  #   @comment = Comment.new(comment_params)
  # end

  # def create
  #   @event = Event.find(params[:event_id])
  #   @comment = Comment.new(comment_params)
  #   @comment.event = @event
  #   @comment.user = current_user
  #   if @comment.save
  #     redirect_to event_path(@event), notice: 'Comment was successfully created'
  #   else
  #     render 'events/show'
  #   end
  # end

  def update
    if @comment.update(comment_params)
      redirect_to event_path(@event), notice: 'Comment was successfully updated'
    else
      render 'events/show'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to event_path(@comment.event), notice: 'Comment was successfully deleted'
  end

end
