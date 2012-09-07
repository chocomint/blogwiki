class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_sidebar_information

  private
  def load_sidebar_information
    @sidebar_recent_entries = Entry.newly.limit(30)
  end
end
