Feature: Calculator
This is a simple gherking example for adding 2 numbers in a calculator.
To add actions to a gherking step, simply right click the yellow lines and implement the step definition.

  @mytag
  Scenario: Adding two numbers
    Given I have entered 50 into the calculator
    And I press add
    And I have entered 70 into the calculator
    When I press equals
    Then the result should be 120 on the screen


  @mytag
  Scenario Outline: Adding more numbers
    Given I have entered <First> into the calculator
    And I press add
    And I have entered <Second> into the calculator
    When I press equals
    Then the result should be <Result> on the screen

  Examples: my calculations
    | First | Second | Result |
    | 50    | 70     | 120    |
    | 30    | 40     | 70     |
    | 60    | 30     | 90     |


