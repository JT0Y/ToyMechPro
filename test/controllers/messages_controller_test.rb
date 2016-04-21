require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "succesful post" do
    assert_difference 'ActionMailer::Base.deliveries.size', 1 do
      post :create, message: {
        name: 'cornholio',
        email: 'cornholio@example.com',
        subject: 'hi',
        content: 'bai'
      }
    end

    assert_redirected_to new_message_path
    last_email = ActionMailer::Base.deliveries.last

    assert_equal "hi", last_email.subject
    assert_equal 'jtoy23@gmail.com', last_email.to[0]
    assert_equal 'cornholio@example.com', last_email.from[0]
    assert_match(/bai/, last_email.body.to_s)

    ActionMailer::Base.deliveries.clear
  end

end
