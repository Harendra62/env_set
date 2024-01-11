class UserMailer < ApplicationMailer

  def create_ac(user)
    @user = user
    @url  = 'http://localhost:3000/auth/login'
    mail(to: @user.email, subject: 'Your Account has been created successfully!')
  end

  def update_ac(user)
    @user = user
    @url  = 'http://localhost:3000/auth/login'
    mail(to: @user.email, subject: 'Your Account has been updated successfully!')
  end

  def delete_ac(user)
    @user = user
    @url  = 'http://localhost:3000/auth/login'
    mail(to: @user.email, subject: 'Your Account has been deleted successfully!')
  end
end
