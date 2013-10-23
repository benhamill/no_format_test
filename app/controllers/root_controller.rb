class RootController < ApplicationController
  def index
    Rails.logger.error params[:bar]
  end
end
