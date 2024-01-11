# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/create_ac
  def create_ac
    UserMailer.create_ac
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/update_ac
  def update_ac
    UserMailer.update_ac
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/delete_ac
  def delete_ac
    UserMailer.delete_ac
  end

end
