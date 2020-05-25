class StaticPageController < ApplicationController
require 'static_page_helper'

  def welcome
    @week_day = arr_time[week_day]
  end

  def help
  end

  def about
  end

  def contact
  end
end
