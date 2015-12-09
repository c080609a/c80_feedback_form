module C80FeedbackForm
  class MessageFeedback < ActiveRecord::Base
    validates_with MessageFeedbackValidator
  end
end
