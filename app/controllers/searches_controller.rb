class SearchesController < ApplicationController
  def show
    @search_results = User.where("name LIKE ?", "%#{ params[:query]}%")
  end
end
