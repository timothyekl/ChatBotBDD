Feature: Prompt for user's name
    In order to interact nicely
    As a friendly user
    I want to tell the app my name

    Scenario: Prompt the user for name
        Given the application is running
        Then I should see "What is your name?"
