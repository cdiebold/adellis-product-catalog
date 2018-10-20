class CommentMailer < ApplicationMailer
  def new_comment(comment)
    @title = comment.title
    @message = comment.message

    mail to: "cdiebold2012@gmail.com", subject: @title
  end
end
