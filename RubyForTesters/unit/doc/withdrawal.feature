Story: ATM withdrawal
    Being a customer who is a Ninja Bank account holder
    Can i withdraw money
    So that I can buy in places that do not accept debit or credit.

Scenario: Current Account Withdrawal
    Given I have $ 1000 in my checking account
    When I make a withdrawal of $ 200
    When my final balance should be $ 800

Scenario: Insufficient Balance
    Given I have $ 0 in my checking account
    When I make a withdrawal of $ 100
    Then I see the message "Insufficient balance to withdraw :("
    And my final balance should be $ 0

Scenario: I have balance but not enough
    Given I have $ 500 in my checking account
    When I make a withdrawal of R $ 501
    Then I see the message "Insufficient balance to withdraw :("
    And my final balance should be $ 500

Scenario: Draw Limit :(
    Given I have $ 1000 in my checking account
    When I make a withdrawal of $ 701
    Then I see the message "Maximum withdrawal limit is $ 700"
    And my final balance should be $ 1000