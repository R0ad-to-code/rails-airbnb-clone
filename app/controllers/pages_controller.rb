class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @flats = Flat.all
    user_query = params[:query]
    if user_query.present?
      @flats = @flats.search_by_address(user_query)
    end
  end
end
