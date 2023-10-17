int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = 0;
  teamAPoints += 1 * (teamA['Free throws'] ?? 0);
  teamAPoints += 2 * (teamA['2 pointer'] ?? 0);
  teamAPoints += 3 * (teamA['3 pointer'] ?? 0);

  int teamBPoints = 0;
  teamBPoints += 1 * (teamB['Free throws'] ?? 0);
  teamBPoints += 2 * (teamB['2 pointer'] ?? 0);
  teamBPoints += 3 * (teamB['3 pointer'] ?? 0);

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else
    return 0;
}
