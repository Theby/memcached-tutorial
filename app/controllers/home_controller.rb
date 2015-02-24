class HomeController < ApplicationController
  def index
    @stats = Rails.cache.stats.first.last
  end
end
