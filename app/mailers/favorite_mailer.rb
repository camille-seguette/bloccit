class FavoriteMailer < ApplicationMailer
  default from: "camilleseguette@gmail.com"

  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@quiet-beyond-81390>"
    headers["In-Reply-To"] = "<post/#{post.id}@quiet-beyond-81390>"
    headers["References"] = "<post/#{post.id}@quiet-beyond-81390>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
