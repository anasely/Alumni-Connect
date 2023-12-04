// Options the user could type in
const prompts = [
  ["hi", "hey", "hello", "bonjour", "salut"],
  ["comment s'inscrire", "comment rejoindre Alumni Connect"],
  ["trouver des profils", "rechercher des anciens étudiants"],
  ["mentorat", "demander un mentor"],
  ["événements de réseautage", "événements professionnels"],
  ["partager des ressources", "partager des projets"],
  ["problème technique", "besoin d'aide"],
  ["qui es-tu", "es-tu un bot", "qui a créé ce bot"],
  ["au revoir", "bye", "à plus tard"],
  ["histoire sur Alumni Connect", "raconte moi une histoire"],
  ["je suis perdu", "je ne sais pas quoi faire"],
  ["merci", "remerciements"]
]

// Possible responses, in corresponding order

const replies = [
  ["Bonjour! Comment puis-je vous aider?", "Salut! En quoi puis-je vous aider aujourd'hui?"],
  ["Pour vous inscrire, cliquez sur 'Inscription' et remplissez le formulaire."],
  ["Vous pouvez trouver des profils d'anciens etudiants en utilisant notre fonction de recherche."],
  ["Pour demander un mentorat, visitez la section 'Mentorat' et suivez les instructions."],
  ["Consultez notre calendrier pour les prochains événements de reseautage."],
  ["Les anciens peuvent partager des ressources et des projets dans la section dediee."],
  ["Pour toute assistance technique, contactez-nous via notre formulaire de contact."],
  ["Je suis le chatbot d'Alumni Connect, ici pour vous aider!"],
  ["Au revoir! N'hesitez pas à revenir si vous avez d'autres questions."],
  ["Alumni Connect est cree pour connecter les etudiants et les anciens. C'est une histoire de connexion et de croissance!"],
  ["Je suis là pour vous aider. Pouvez-vous preciser votre question ou votre probleme?"],
  ["Vous etes les bienvenus! N'hesitez pas si vous avez d'autres questions."]
]

// Random for any other user input

const alternative = [
  "Pouvez-vous reformuler?",
  "Je ne suis pas sûr de comprendre.",
  "Pouvez-vous préciser?",
  "Je suis là pour vous aider, n'hésitez pas à poser une autre question."
]

// Specific to Alumni Connect

const alumniConnect = ["Rejoignez notre communauté d'anciens!", "Partagez votre expérience sur Alumni Connect", "Connectez-vous avec des anciens pour des conseils professionnels"]
