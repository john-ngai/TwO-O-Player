# TwO-O-Player Math Game

## Description

Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Details

Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

## Tasks

### Task 1: Extract Nouns for Classes

Read the description above again and extract / write down the nouns that you feel could make for important entities (manifested in the form of classes) to contain (encapsulate) logic as part of this app.

#### Answer:

* Games class
* Players class
* Questions class
<!-- * Answers class -->

### Task 2: Write their roles

Write out a brief paragraph describing the role that class will play in your app.

Remember that objects are important for two things:
1. State: Storing data describing themselves (variables)
    * Players class
      * @NAME, @lives
    * Games class
      * @PLAYER1, @PLAYER2, @question, @num1, @num2, @answer, @player_turn
2. Behavior: Defining actions that can be performed on them (methods)
    * Players class:
      * initialize(name), decrease_lives,
    * Games class:
      * start, select_first-player, select_next-player, check_winner
    * Questions class:  
      num_generator, check_answer


Psuedocode:
1. start method
2. select_first-player method
3. while player1.lives > 0 && player2.lives > 0 loop
    generate num 1 & num 2
    ask the question num 1 * num 2

    get_answer $stdin.gets.chomp
    check_answer true/false

    if false then, decrease_lives

    select_next_player, if p1 > p2 or p2 > p1
    end of loop

    check_winner, return the player with > 0 lives

    puts "player.name is the winner!!"


Write down the methods for each class while also speaking to the following points:

* What information is relevant to each class?
* What will they need in order to be initialized?
* What public methods will be defined on them?

Furthermore:

* Which class will contain the game loop (where each instance of the loop is the other players turn)?
  * Answer: Games class
* Which class should manage who the current_player is?
  * Answer: Games class
* Which class(es) will contain user I/O and which will not have any?
  * Answers: Players won't have the I/O, but the Games will.



### Task 3: Peer & Mentor Review

Review your approach with your peers and then with a mentor to make sure you are on the right track before starting to write your code.