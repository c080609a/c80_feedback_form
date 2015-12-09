C80FeedbackForm::Engine.routes.draw do
  # scope :module => 'c80_feedback_form' do
    match '/message_feedback', :to => 'mess#handle_message_feedback', :via => :post
    match '/give_me_form', :to => 'site#give_me_form', :via => :post
  # end
end
