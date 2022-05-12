class UsersRepository
    class << self 
      def index
        @users = User.all
      end
 
      def new
        @user = User.new
      end
     def createUser(user)
       @user = User.new(user)
     end
 
     def findById(id)
       @user = User.find(id)
     end
 
     def update(user,user_form)
       isUpdate = user.update(user_form)
     end
 
     def delete(user)
       user.destroy
     end
 
    end
end