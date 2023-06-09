class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :user_questions
         has_many :user_quizzes
         has_many :user_worlds
         has_many :quizzes, through: :user_quizzes
         has_many :worlds, through: :user_worlds
         has_many :questions, through: :user_questions
         has_many :user_avatars, dependent: :destroy
         has_many :user_quests


  after_create :assign_avatar

  def assign_avatar
    ua = UserAvatar.new(avatar: Avatar.first)
    ua.user = self
    ua.equiped = true
    ua.save!
  end

end
