ActiveAdmin.register C80FeedbackForm::MessageFeedback, :as => 'MessageFeedback' do

  before_filter :skip_sidebar!, :only => :index

  menu :parent => "Сообщения", :label => 'Обратная связь'

  index do
    selectable_column
    id_column
    column :created_at
    column :name
    column :email_or_phone
    column :comment do |msg|
      msg.comment.html_safe if msg.comment.present?
    end

    actions
  end


end