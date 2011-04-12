Feature: Play some games
    In order to have a good time chatting with my terminal
    As a friendly user
    I want to play some games

    Scenario: Ask about a game
        Given I have introduced myself as "Tim"
        Then I should see "Would you like to play a game?"

    Scenario: List games
        Given I have introduced myself as "Tim"
        And I see "Would you like to play a game?"
        And I type "Yes" and press Enter
        Then I should see:
                """
                What game would you like to play? I know:
                1. Chess
                2. Checkers
                3. Poker
                4. Falkin's Maze
                5. Global Thermonuclear War
                """
