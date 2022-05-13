class PostMailer < ApplicationMailer
    def post_list(user,post)
        @posts = post
        mail(:to => user, :subject => "All post list" ,:from => "info@mysite.com")
    end
end
