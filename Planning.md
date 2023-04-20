# Task 1: Extract Nouns for Classes
Game
Player
Question

# Task 2: Write their roles
Game: This class will encapsulate the overall game logic, including managing the game loop, tracking each player's score and remaining lives, and determining the winner.
Player: This class will represent each player and store their score and remaining lives. It will also be responsible for answering questions and losing lives if a question is answered incorrectly.
Question: This class will generate random addition questions with two numbers between 1 and 20.

# Task 3: Write down the methods for each class
Game
initialize: This method will initialize the two Player instances and a Question instance. It will also set the current_player to the first player and start the game loop.
game_loop: This method will run the game loop, alternating turns between the two players until one player loses all their lives. It will prompt the current_player with a new question, check the answer, and update the scores and lives accordingly. It will also output the scores after each turn.
end_game: This method will be called when the game ends (i.e. one player loses all their lives). It will output the winner and the final scores.
Player
initialize: This method will initialize the Player with a score of 0 and 3 lives.
answer_question: This method will prompt the player with a question and wait for the player's input. If the answer is correct, it will add 1 to the player's score. If the answer is incorrect, it will subtract 1 from the player's lives.
lose_life: This method will subtract 1 from the player's lives.

# Question
initialize: This method will generate two random numbers between 1 and 20 and store them as instance variables.
ask: This method will return a string containing the addition question in the format "What is x + y?", where x and y are the two random numbers generated during initialization.
check_answer: This method will take a player's answer as input and return true if the answer is correct (i.e. equal to the sum of x and y), and false otherwise.

# Additional Notes
The Game class will contain the game loop, as described in the Game methods above.
The Game class will manage who the current_player is by keeping track of which player's turn it is and updating it after each turn.
The Player class will not contain any user I/O, as that will be handled by the Game class.
The Question class will not contain any user I/O, as it will simply generate a question string and check the player's answer.