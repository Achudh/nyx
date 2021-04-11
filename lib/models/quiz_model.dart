class Quiz {
  String name;
  double progress;
  String completion;
  String image;
  Quiz({
    this.name,
    this.progress,
    this.completion,
    this.image,
  });
}

final List<Quiz> quizData = [
  Quiz(
      name: "Marvel\'s Avenger Quiz",
      progress: 0.8,
      completion: "8.9",
      image: "assets/images/marvel.png"),
  Quiz(
      name: "WWF\nQuiz",
      progress: 0.6,
      completion: "8.9",
      image: "assets/images/wwe.png"),
  Quiz(
      name: "Ghost of Tsushima Quiz",
      progress: 0.4,
      completion: "8.9",
      image: "assets/images/ghost.png"),
];
