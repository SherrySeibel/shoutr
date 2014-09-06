class DashboardsController < ApplicationController
  def show
    @text_subject = TextSubject.new
    @image_subject = ImageSubject.new
    @timeline = current_user.timeline.page params[:page]
    @all_shouts = Shout.all.order(created_at: :desc)
  end
end
