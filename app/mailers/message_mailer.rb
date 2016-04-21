class MessageMailer < ApplicationMailer
  # use your own email address here
  default :to => "jtoy23@gmail.com"

  def message_me(msg)
    @msg = msg

    mail from: @msg.email, subject: @msg.subject, body: @msg.content
  end
end
