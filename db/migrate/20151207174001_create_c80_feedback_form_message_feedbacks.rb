class CreateC80FeedbackFormMessageFeedbacks < ActiveRecord::Migration
  def change
    create_table :c80_feedback_form_message_feedbacks, :options => 'COLLATE=utf8_unicode_ci' do |t|
      t.string :name
      t.string :email_or_phone
      t.string :comment
      t.string :kapcha

      t.timestamps
    end
  end
end