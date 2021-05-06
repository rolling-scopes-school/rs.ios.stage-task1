## Leader board

An arcade game player wants to climb to the top of the leaderboard and track their ranking.
The rules of ranking are:
- The player with the highest score is ranked 1 the leaderboard.
- Players who have equal scores receive the same ranking number, and the next player(s) receive
the immediately following ranking number.

You receive rankedArray with other players’ score and playerArray with your score in different games. The task is to track your ranking for every game.

Example:
Ranked = [100, 90, 90, 80]
Player = [70, 80, 105]

The ranked players will have ranks 1, 2, 2 and 3 respectively (Players with equal score have the same ranking). If the player's scores are 70, 80 and , 105 their rankings after each game
are 4, 3 and 1. Return [4, 3, 1]

Edge cases:
- If ranked array is empty - it means that you play alone and always take 1st place
- If player array is empty – it means that you didn’t play at all and can’t have any ranks
