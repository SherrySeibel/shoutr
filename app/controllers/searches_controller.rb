class SearchesController < ApplicationController
  def show
    @search_results = User.where("userame LIKE ?", "%#{ params[:query]}%")
  end
end
