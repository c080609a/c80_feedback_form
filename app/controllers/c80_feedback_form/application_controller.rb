module C80FeedbackForm
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  end
end