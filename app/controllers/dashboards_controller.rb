class DashboardsController < ApplicationController
  def show
    @text_subject = TextSubject.new
    @shouts_feed = current_user.timeline
  end
end
