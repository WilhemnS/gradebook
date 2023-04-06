class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable

         def is_teacher
            return account_id == 1
         end

         def is_ta 
          return account_id == 0
         end

end
