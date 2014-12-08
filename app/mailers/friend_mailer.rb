class FriendMailer < ActionMailer::Base
  default from: "nayib.abdala@gmail.com"


    def email_friend(friend, current_user)
    	@user_liked = friend
      @user_who_likes = current_user
      mail(to: @user_liked.email, subject: 'Alguien quiere conocerte')
    end

    def email_current_user(current_user, friend)
      @user_who_likes = current_user
      @user_liked = friend
      mail(to: @user_who_likes.email, subject: 'Le has dado te gusta a un amigo')
    end

end


