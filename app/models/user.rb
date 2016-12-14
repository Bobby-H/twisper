class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :posts, dependent: :destroy
         has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy

         has_many :following, through: active_relationships, source: followed

         #helper methods

         #follow another User
         def follow(other)
           active_relationships.create(followed_id: other.id)
         end

         #unfollow a User
         def unfollow
           active_relationships.find_by(followed_id: other.id).destroy
         end

         #is following a user?
         def following?(other)
           following.include?(other)
         end
end
