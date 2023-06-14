puts "Cleaning up database..."

UserQuestion.destroy_all
p "-------all user questions destroyed-------"
UserQuiz.destroy_all
p "-------all user quizzes destroyed-------"
UserWorld.destroy_all
p "-------all user worlds destroyed-------"
Answer.destroy_all
p "-------all answers destroyed-------"
Question.destroy_all
p "-------all questions destroyed-------"
Quiz.destroy_all
p "-------all quizzes destroyed-------"
World.destroy_all
p "-------all worlds destroyed-------"
User.destroy_all
p "-------all users destroyed-------"
puts "Database cleaned"

p "-------creating users--------"

hugo = User.create!(email: "hugo@gmail.com", password: "123456", name: "Hugo")
guillaume = User.create!(email: "guillaume@gmail.com", password: "123456", name: "Guillaume")
loic = User.create!(email: "loic@gmail.com", password: "123456", name: "Loic")
eva = User.create!(email: "eva@gmail.com", password: "123456", name: "Eva")

p "--------#{User.count} users created--------"

p "-------creating worlds--------"

world_one = World.create!(title: "Maths", description: "Bienvenue dans le monde merveilleux des Mathématiques", reward: 1000)
world_two = World.create!(title: "Français", description: "Bienvenue dans le monde merveilleux du Français", reward: 1000)

p "————#{World.count} worlds created--------"

p "-------creating quizzes--------"

world_one_quiz_one = Quiz.create!(world_id: world_one.id, title: "Maths niveau 1", description: "Bienvenue dans le quizz Maths niveau 1", number: 1, reward: 100)
world_one_quiz_two = Quiz.create!(world_id: world_one.id, title: "Maths niveau 2", description: "Bienvenue dans le quizz Maths niveau 2", number: 2, reward: 100)
world_two_quiz_one = Quiz.create!(world_id: world_two.id, title: "Français niveau 1", description: "Bienvenue dans le quizz Français niveau 1", number: 1, reward: 100)
world_two_quiz_two = Quiz.create!(world_id: world_two.id, title: "Français niveau 2", description: "Bienvenue dans le quizz Français niveau 2", number: 2, reward: 100)

p "————#{Quiz.count} quizzes created--------"

p "-------creating questions--------"

world_one_quiz_one_question_one = Question.create!(quiz_id: world_one_quiz_one.id, title: "Le nombre 327 se situe entre...", number: 1, reward: 10)
world_one_quiz_one_question_two = Question.create!(quiz_id: world_one_quiz_one.id, title: "Quel nombre n'est pas un multiple de 6?", number: 2, reward: 20)
world_one_quiz_one_question_three = Question.create!(quiz_id: world_one_quiz_one.id, title: "Quel nombre est le quart de 24", number: 3, reward: 30)



world_one_quiz_two_question_one = Question.create!(quiz_id: world_one_quiz_two.id, title: "Donne le résultat de la multiplication suivante : 8 x 7", number: 1, reward: 10)
world_one_quiz_two_question_two = Question.create!(quiz_id: world_one_quiz_two.id, title: "Donne le résultat de la division suivante : 56 / 8", number: 2, reward: 20)
world_one_quiz_two_question_three = Question.create!(quiz_id: world_one_quiz_two.id, title: "Pour avoir 56 bonbons, combien de paquets de 8 bonbons dois-je acheter?", number: 3, reward: 30)



world_two_quiz_one_question_one = Question.create!(quiz_id: world_two_quiz_one.id, title: "Coche le synonyme de « manger »", number: 1, reward: 30)
world_two_quiz_one_question_two = Question.create!(quiz_id: world_two_quiz_one.id, title: "Remplace le mot « avance » par son contraire. «L’araignée avance jusqu’à la lanterne.»", number: 2, reward: 30)
world_two_quiz_one_question_three = Question.create!(quiz_id: world_two_quiz_one.id, title: "Retrouve les verbes dans la phrase suivante. « Mais comme il ne peut pondre ses œufs qu’en eau douce, il parcourt des milliers de kilomètres pour venir se reproduire dans une rivière.»", number: 3, reward: 30)



world_two_quiz_two_question_one = Question.create!(quiz_id: world_two_quiz_two.id, title: "Français niveau 2 - question 1 : intitulé de la question", number: 1, reward: 30)
world_two_quiz_two_question_two = Question.create!(quiz_id: world_two_quiz_two.id, title: "Français niveau 2 - question 2 : intitulé de la question", number: 2, reward: 30)
world_two_quiz_two_question_three = Question.create!(quiz_id: world_two_quiz_two.id, title: "Français niveau 2 - question 3 : intitulé de la question", number: 3, reward: 30)


p "————#{Question.count} questions created--------"

p "-------creating answers--------"

world_one_quiz_one_question_one_answer_one = Answer.create!(question_id: world_one_quiz_one_question_one.id, content: "310 et 320", number: 1, good_answer_flag: false)
world_one_quiz_one_question_one_answer_two = Answer.create!(question_id: world_one_quiz_one_question_one.id, content: "320 et 330", number: 2, good_answer_flag: true)
world_one_quiz_one_question_one_answer_three = Answer.create!(question_id: world_one_quiz_one_question_one.id, content: "330 et 440", number: 3, good_answer_flag: false)


world_one_quiz_one_question_two_answer_one = Answer.create!(question_id: world_one_quiz_one_question_two.id, content: "12", number: 1, good_answer_flag: false)
world_one_quiz_one_question_two_answer_two = Answer.create!(question_id: world_one_quiz_one_question_two.id, content: "54", number: 2, good_answer_flag: false)
world_one_quiz_one_question_two_answer_three = Answer.create!(question_id: world_one_quiz_one_question_two.id, content: "32", number: 3, good_answer_flag: true)


world_one_quiz_one_question_three_answer_one = Answer.create!(question_id: world_one_quiz_one_question_three.id, content: "24", number: 1, good_answer_flag: false)
world_one_quiz_one_question_three_answer_two = Answer.create!(question_id: world_one_quiz_one_question_three.id, content: "12", number: 2, good_answer_flag: false)
world_one_quiz_one_question_three_answer_three = Answer.create!(question_id: world_one_quiz_one_question_three.id, content: "6", number: 3, good_answer_flag: true)


world_one_quiz_two_question_one_answer_one = Answer.create!(question_id: world_one_quiz_two_question_one.id, content: "56", number: 1, good_answer_flag: true)
world_one_quiz_two_question_one_answer_two = Answer.create!(question_id: world_one_quiz_two_question_one.id, content: "65", number: 2, good_answer_flag: false)
world_one_quiz_two_question_one_answer_three = Answer.create!(question_id: world_one_quiz_two_question_one.id, content: "58", number: 3, good_answer_flag: false)



world_one_quiz_two_question_two_answer_one = Answer.create!(question_id: world_one_quiz_two_question_two.id, content: "6", number: 1, good_answer_flag: false)
world_one_quiz_two_question_two_answer_two = Answer.create!(question_id: world_one_quiz_two_question_two.id, content: "7", number: 2, good_answer_flag: true)
world_one_quiz_two_question_two_answer_three = Answer.create!(question_id: world_one_quiz_two_question_two.id, content: "8", number: 3, good_answer_flag: false)



world_one_quiz_two_question_three_answer_one = Answer.create!(question_id: world_one_quiz_two_question_three.id, content: "7 paquets", number: 1, good_answer_flag: true)
world_one_quiz_two_question_three_answer_two = Answer.create!(question_id: world_one_quiz_two_question_three.id, content: "8 paquets", number: 2, good_answer_flag: false)
world_one_quiz_two_question_three_answer_three = Answer.create!(question_id: world_one_quiz_two_question_three.id, content: "9 paquets", number: 3, good_answer_flag: false)


world_two_quiz_one_question_one_answer_one = Answer.create!(question_id: world_two_quiz_one_question_one.id, content: "intitulé de la réponse 1", number: 1, good_answer_flag: false)
world_two_quiz_one_question_one_answer_two = Answer.create!(question_id: world_two_quiz_one_question_one.id, content: "intitulé de la réponse 2", number: 2, good_answer_flag: true)
world_two_quiz_one_question_one_answer_three = Answer.create!(question_id: world_two_quiz_one_question_one.id, content: "intitulé de la réponse 3", number: 3, good_answer_flag: false)


world_two_quiz_one_question_two_answer_one = Answer.create!(question_id: world_two_quiz_one_question_two.id, content: "intitulé de la réponse 1", number: 1, good_answer_flag: false)
world_two_quiz_one_question_two_answer_two = Answer.create!(question_id: world_two_quiz_one_question_two.id, content: "intitulé de la réponse 2", number: 2, good_answer_flag: true)
world_two_quiz_one_question_two_answer_three = Answer.create!(question_id: world_two_quiz_one_question_two.id, content: "intitulé de la réponse 3", number: 3, good_answer_flag: false)


world_two_quiz_one_question_three_answer_one = Answer.create!(question_id: world_two_quiz_one_question_three.id, content: "intitulé de la réponse 1", number: 1, good_answer_flag: false)
world_two_quiz_one_question_three_answer_two = Answer.create!(question_id: world_two_quiz_one_question_three.id, content: "intitulé de la réponse 2", number: 2, good_answer_flag: true)
world_two_quiz_one_question_three_answer_three = Answer.create!(question_id: world_two_quiz_one_question_three.id, content: "intitulé de la réponse 3", number: 3, good_answer_flag: false)


world_two_quiz_two_question_one_answer_one = Answer.create!(question_id: world_two_quiz_two_question_one.id, content: "intitulé de la réponse 1", number: 1, good_answer_flag: false)
world_two_quiz_two_question_one_answer_two = Answer.create!(question_id: world_two_quiz_two_question_one.id, content: "intitulé de la réponse 2", number: 2, good_answer_flag: true)
world_two_quiz_two_question_one_answer_three = Answer.create!(question_id: world_two_quiz_two_question_one.id, content: "intitulé de la réponse 3", number: 3, good_answer_flag: false)


world_two_quiz_two_question_two_answer_one = Answer.create!(question_id: world_two_quiz_two_question_two.id, content: "intitulé de la réponse 1", number: 1, good_answer_flag: false)
world_two_quiz_two_question_two_answer_two = Answer.create!(question_id: world_two_quiz_two_question_two.id, content: "intitulé de la réponse 2", number: 2, good_answer_flag: true)
world_two_quiz_two_question_two_answer_three = Answer.create!(question_id: world_two_quiz_two_question_two.id, content: "intitulé de la réponse 3", number: 3, good_answer_flag: false)


world_two_quiz_two_question_three_answer_one = Answer.create!(question_id: world_two_quiz_two_question_three.id, content: "intitulé de la réponse 1", number: 1, good_answer_flag: false)
world_two_quiz_two_question_three_answer_two = Answer.create!(question_id: world_two_quiz_two_question_three.id, content: "intitulé de la réponse 2", number: 2, good_answer_flag: true)
world_two_quiz_two_question_three_answer_three = Answer.create!(question_id: world_two_quiz_two_question_three.id, content: "intitulé de la réponse 3", number: 3, good_answer_flag: false)

p "————#{Answer.count} answers created--------"

p "-------creating user_worlds--------"

hugo_user_world_one = UserWorld.create!(user_id: hugo.id, world_id: world_one.id, done_flag: false)
hugo_user_world_two = UserWorld.create!(user_id: hugo.id, world_id: world_two.id, done_flag: false)

guillaume_user_world_one = UserWorld.create!(user_id: guillaume.id, world_id: world_one.id, done_flag: false)
guillaume_user_world_two = UserWorld.create!(user_id: guillaume.id, world_id: world_two.id, done_flag: false)

loic_user_world_one = UserWorld.create!(user_id: loic.id, world_id: world_one.id, done_flag: false)
loic_user_world_two = UserWorld.create!(user_id: loic.id, world_id: world_two.id, done_flag: false)

eva_user_world_one = UserWorld.create!(user_id: eva.id, world_id: world_one.id, done_flag: false)
eva_user_world_two = UserWorld.create!(user_id: eva.id, world_id: world_two.id, done_flag: false)

p "————#{UserWorld.count} user_worlds created--------"

p "-------creating user_quizzes--------"

hugo_user_world_one_quiz_one = UserQuiz.create!(user_id: hugo.id, quiz_id: world_one_quiz_one.id, done_flag: false)
hugo_user_world_one_quiz_two = UserQuiz.create!(user_id: hugo.id, quiz_id: world_one_quiz_two.id, done_flag: false)
hugo_user_world_two_quiz_one = UserQuiz.create!(user_id: hugo.id, quiz_id: world_two_quiz_one.id, done_flag: false)
hugo_user_world_two_quiz_two = UserQuiz.create!(user_id: hugo.id, quiz_id: world_two_quiz_two.id, done_flag: false)

guillaume_user_world_one_quiz_one = UserQuiz.create!(user_id: guillaume.id, quiz_id: world_one_quiz_one.id, done_flag: false)
guillaume_user_world_one_quiz_two = UserQuiz.create!(user_id: guillaume.id, quiz_id: world_one_quiz_two.id, done_flag: false)
guillaume_user_world_two_quiz_one = UserQuiz.create!(user_id: guillaume.id, quiz_id: world_two_quiz_one.id, done_flag: false)
guillaume_user_world_two_quiz_two = UserQuiz.create!(user_id: guillaume.id, quiz_id: world_two_quiz_two.id, done_flag: false)

loic_user_world_one_quiz_one = UserQuiz.create!(user_id: loic.id, quiz_id: world_one_quiz_one.id, done_flag: false)
loic_user_world_one_quiz_two = UserQuiz.create!(user_id: loic.id, quiz_id: world_one_quiz_two.id, done_flag: false)
loic_user_world_two_quiz_one = UserQuiz.create!(user_id: loic.id, quiz_id: world_two_quiz_one.id, done_flag: false)
loic_user_world_two_quiz_two = UserQuiz.create!(user_id: loic.id, quiz_id: world_two_quiz_two.id, done_flag: false)

eva_user_world_one_quiz_one = UserQuiz.create!(user_id: eva.id, quiz_id: world_one_quiz_one.id, done_flag: false)
eva_user_world_one_quiz_two = UserQuiz.create!(user_id: eva.id, quiz_id: world_one_quiz_two.id, done_flag: false)
eva_user_world_two_quiz_one = UserQuiz.create!(user_id: eva.id, quiz_id: world_two_quiz_one.id, done_flag: false)
eva_user_world_two_quiz_two = UserQuiz.create!(user_id: eva.id, quiz_id: world_two_quiz_two.id, done_flag: false)

p "————#{UserQuiz.count} user_quizzes created--------"

p "-------creating user_questions--------"

hugo_user_world_one_quiz_one_question_one = UserQuestion.create!(user_id: hugo.id, question_id: world_one_quiz_one_question_one.id, done_flag: false, try: 0)
hugo_user_world_one_quiz_one_question_two = UserQuestion.create!(user_id: hugo.id, question_id: world_one_quiz_one_question_two.id, done_flag: false, try: 0)
hugo_user_world_one_quiz_one_question_three = UserQuestion.create!(user_id: hugo.id, question_id: world_one_quiz_one_question_three.id, done_flag: false, try: 0)

hugo_user_world_one_quiz_two_question_one = UserQuestion.create!(user_id: hugo.id, question_id: world_one_quiz_two_question_one.id, done_flag: false, try: 0)
hugo_user_world_one_quiz_two_question_two = UserQuestion.create!(user_id: hugo.id, question_id: world_one_quiz_two_question_two.id, done_flag: false, try: 0)
hugo_user_world_one_quiz_two_question_three = UserQuestion.create!(user_id: hugo.id, question_id: world_one_quiz_two_question_three.id, done_flag: false, try: 0)

hugo_user_world_two_quiz_one_question_one = UserQuestion.create!(user_id: hugo.id, question_id: world_two_quiz_one_question_one.id, done_flag: false, try: 0)
hugo_user_world_two_quiz_one_question_two = UserQuestion.create!(user_id: hugo.id, question_id: world_two_quiz_one_question_two.id, done_flag: false, try: 0)
hugo_user_world_two_quiz_one_question_three = UserQuestion.create!(user_id: hugo.id, question_id: world_two_quiz_one_question_three.id, done_flag: false, try: 0)

hugo_user_world_two_quiz_two_question_one = UserQuestion.create!(user_id: hugo.id, question_id: world_two_quiz_two_question_one.id, done_flag: false, try: 0)
hugo_user_world_two_quiz_two_question_two = UserQuestion.create!(user_id: hugo.id, question_id: world_two_quiz_two_question_two.id, done_flag: false, try: 0)
hugo_user_world_two_quiz_two_question_three = UserQuestion.create!(user_id: hugo.id, question_id: world_two_quiz_two_question_three.id, done_flag: false, try: 0)



guillaume_user_world_one_quiz_one_question_one = UserQuestion.create!(user_id: guillaume.id, question_id: world_one_quiz_one_question_one.id, done_flag: false, try: 0)
guillaume_user_world_one_quiz_one_question_two = UserQuestion.create!(user_id: guillaume.id, question_id: world_one_quiz_one_question_two.id, done_flag: false, try: 0)
guillaume_user_world_one_quiz_one_question_three = UserQuestion.create!(user_id: guillaume.id, question_id: world_one_quiz_one_question_three.id, done_flag: false, try: 0)

guillaume_user_world_one_quiz_two_question_one = UserQuestion.create!(user_id: guillaume.id, question_id: world_one_quiz_two_question_one.id, done_flag: false, try: 0)
guillaume_user_world_one_quiz_two_question_two = UserQuestion.create!(user_id: guillaume.id, question_id: world_one_quiz_two_question_two.id, done_flag: false, try: 0)
guillaume_user_world_one_quiz_two_question_three = UserQuestion.create!(user_id: guillaume.id, question_id: world_one_quiz_two_question_three.id, done_flag: false, try: 0)

guillaume_user_world_two_quiz_one_question_one = UserQuestion.create!(user_id: guillaume.id, question_id: world_two_quiz_one_question_one.id, done_flag: false, try: 0)
guillaume_user_world_two_quiz_one_question_two = UserQuestion.create!(user_id: guillaume.id, question_id: world_two_quiz_one_question_two.id, done_flag: false, try: 0)
guillaume_user_world_two_quiz_one_question_three = UserQuestion.create!(user_id: guillaume.id, question_id: world_two_quiz_one_question_three.id, done_flag: false, try: 0)

guillaume_user_world_two_quiz_two_question_one = UserQuestion.create!(user_id: guillaume.id, question_id: world_two_quiz_two_question_one.id, done_flag: false, try: 0)
guillaume_user_world_two_quiz_two_question_two = UserQuestion.create!(user_id: guillaume.id, question_id: world_two_quiz_two_question_two.id, done_flag: false, try: 0)
guillaume_user_world_two_quiz_two_question_three = UserQuestion.create!(user_id: guillaume.id, question_id: world_two_quiz_two_question_three.id, done_flag: false, try: 0)



loic_user_world_one_quiz_one_question_one = UserQuestion.create!(user_id: loic.id, question_id: world_one_quiz_one_question_one.id, done_flag: false, try: 0)
loic_user_world_one_quiz_one_question_two = UserQuestion.create!(user_id: loic.id, question_id: world_one_quiz_one_question_two.id, done_flag: false, try: 0)
loic_user_world_one_quiz_one_question_three = UserQuestion.create!(user_id: loic.id, question_id: world_one_quiz_one_question_three.id, done_flag: false, try: 0)

loic_user_world_one_quiz_two_question_one = UserQuestion.create!(user_id: loic.id, question_id: world_one_quiz_two_question_one.id, done_flag: false, try: 0)
loic_user_world_one_quiz_two_question_two = UserQuestion.create!(user_id: loic.id, question_id: world_one_quiz_two_question_two.id, done_flag: false, try: 0)
loic_user_world_one_quiz_two_question_three = UserQuestion.create!(user_id: loic.id, question_id: world_one_quiz_two_question_three.id, done_flag: false, try: 0)

loic_user_world_two_quiz_one_question_one = UserQuestion.create!(user_id: loic.id, question_id: world_two_quiz_one_question_one.id, done_flag: false, try: 0)
loic_user_world_two_quiz_one_question_two = UserQuestion.create!(user_id: loic.id, question_id: world_two_quiz_one_question_two.id, done_flag: false, try: 0)
loic_user_world_two_quiz_one_question_three = UserQuestion.create!(user_id: loic.id, question_id: world_two_quiz_one_question_three.id, done_flag: false, try: 0)

loic_user_world_two_quiz_two_question_one = UserQuestion.create!(user_id: loic.id, question_id: world_two_quiz_two_question_one.id, done_flag: false, try: 0)
loic_user_world_two_quiz_two_question_two = UserQuestion.create!(user_id: loic.id, question_id: world_two_quiz_two_question_two.id, done_flag: false, try: 0)
loic_user_world_two_quiz_two_question_three = UserQuestion.create!(user_id: loic.id, question_id: world_two_quiz_two_question_three.id, done_flag: false, try: 0)


eva_user_world_one_quiz_one_question_one = UserQuestion.create!(user_id: eva.id, question_id: world_one_quiz_one_question_one.id, done_flag: false, try: 0)
eva_user_world_one_quiz_one_question_two = UserQuestion.create!(user_id: eva.id, question_id: world_one_quiz_one_question_two.id, done_flag: false, try: 0)
eva_user_world_one_quiz_one_question_three = UserQuestion.create!(user_id: eva.id, question_id: world_one_quiz_one_question_three.id, done_flag: false, try: 0)

eva_user_world_one_quiz_two_question_one = UserQuestion.create!(user_id: eva.id, question_id: world_one_quiz_two_question_one.id, done_flag: false, try: 0)
eva_user_world_one_quiz_two_question_two = UserQuestion.create!(user_id: eva.id, question_id: world_one_quiz_two_question_two.id, done_flag: false, try: 0)
eva_user_world_one_quiz_two_question_three = UserQuestion.create!(user_id: eva.id, question_id: world_one_quiz_two_question_three.id, done_flag: false, try: 0)

eva_user_world_two_quiz_one_question_one = UserQuestion.create!(user_id: eva.id, question_id: world_two_quiz_one_question_one.id, done_flag: false, try: 0)
eva_user_world_two_quiz_one_question_two = UserQuestion.create!(user_id: eva.id, question_id: world_two_quiz_one_question_two.id, done_flag: false, try: 0)
eva_user_world_two_quiz_one_question_three = UserQuestion.create!(user_id: eva.id, question_id: world_two_quiz_one_question_three.id, done_flag: false, try: 0)

eva_user_world_two_quiz_two_question_one = UserQuestion.create!(user_id: eva.id, question_id: world_two_quiz_two_question_one.id, done_flag: false, try: 0)
eva_user_world_two_quiz_two_question_two = UserQuestion.create!(user_id: eva.id, question_id: world_two_quiz_two_question_two.id, done_flag: false, try: 0)
eva_user_world_two_quiz_two_question_three = UserQuestion.create!(user_id: eva.id, question_id: world_two_quiz_two_question_three.id, done_flag: false, try: 0)

p "————#{UserQuestion.count} user_questions created--------"
