class UserMailer < ApplicationMailer
    def user_send(user)
        @user = user
        mail(:to=>@user.email , :subject=> "Your registration was successfully.", :from => "info@mysite.com")
    end
    def user_delete(user)
        @user = user
        mail(:to=>@user.email , :subject=> "User Deleted.", :from => "info@mysite.com")
    end
end
