class Tournaments {
  String name;
  int totalPlayers;
  int activePlayers;
  int priceMoney;
  Tournaments({
    this.name,
    this.totalPlayers,
    this.activePlayers,
    this.priceMoney,
  });
}

final List<Tournaments> tournamentsData = [
  Tournaments(
      name: "AngularJS",
      totalPlayers: 250,
      activePlayers: 100,
      priceMoney: 500),
  Tournaments(
    name: "Flutter",
    totalPlayers: 300,
    activePlayers: 250,
    priceMoney: 400,
  ),
  Tournaments(
    name: "React",
    totalPlayers: 400,
    activePlayers: 200,
    priceMoney: 300,
  ),
  Tournaments(
      name: "AngularJS",
      totalPlayers: 250,
      activePlayers: 100,
      priceMoney: 500),
  Tournaments(
    name: "Flutter",
    totalPlayers: 300,
    activePlayers: 250,
    priceMoney: 400,
  ),
  Tournaments(
    name: "React",
    totalPlayers: 400,
    activePlayers: 200,
    priceMoney: 300,
  ),
];
