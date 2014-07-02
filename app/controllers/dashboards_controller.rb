class DashboardsController < ApplicationController
  def show
    @text_subject = TextSubject.new
    @followed_users = current_user.followed_users
  end
end
