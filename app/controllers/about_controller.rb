class AboutController < ApplicationController
  before_action :set_all_categories
  
  def set_all_categories
    @categorize = Category.all
  end
end
