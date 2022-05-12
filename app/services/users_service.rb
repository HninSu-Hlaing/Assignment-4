class UsersService

    class << self
  
      def index
         UsersRepository.index
      end
  
      def new
        UsersRepository.new
      end
      def createUser(user)
        UsersRepository.createUser(user)
      end
  
      def update(id,user_form)
        @user = UsersRepository.findById(id)
        isUpdate = UsersRepository.update(@user,user_form)
      end
  
      def delete(id)
        @user = UsersRepository.findById(id)
        UsersRepository.delete(@user)
      end
      
    end
  
  end