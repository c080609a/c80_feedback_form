module C80FeedbackForm
  module SiteHelper

    def render_feedback_form

      render :partial => "c80_feedback_form/site/shared/feedback_form",
             :locals => {
                 :mess => "MessageFeedback.new"
             }

    end

    def render_ok_message
      render :partial => "c80_feedback_form/site/shared/ok_message",
             :locals => {
                 ok_text: "Мы свяжемся с Вами в ближайшее время.",
                 wtitle: "Ваше сообщение отправлено"
             }
    end

  end
end