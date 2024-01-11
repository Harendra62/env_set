require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  test "create_ac" do
    mail = UserMailer.create_ac
    assert_equal "Create ac", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "update_ac" do
    mail = UserMailer.update_ac
    assert_equal "Update ac", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "delete_ac" do
    mail = UserMailer.delete_ac
    assert_equal "Delete ac", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
