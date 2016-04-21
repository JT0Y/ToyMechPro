require 'test_helper'

class MessageTest < ActiveSupport::TestCase
    test 'should accept valid attributes' do
      valid_attrs = {
        name: 'stephen',
        email: 'stephen@example.com',
        subject: 'hi',
        content: 'kthnxbai'
      }

      msg = Message.new valid_attrs

      assert msg.valid?
    end

    test 'attributes can not be blank' do
        msg = Message.new
        refute msg.valid?
      end

  test 'responds to name, email, subject and content' do
    msg = Message.new
    [:name, :email, :subject, :content].each do |attr|
      assert msg.respond_to? attr
    end
  end
end
