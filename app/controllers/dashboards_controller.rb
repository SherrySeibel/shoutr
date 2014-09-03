class DashboardsController < ApplicationController
  def show
    @text_subject = TextSubject.new
    @timeline = current_user.timeline.page params[:page]
    @image_subject = ImageSubject.new
  end
end
