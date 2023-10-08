############################
# 6410406827 Pawat Puttimit
############################

Feature: deposit
  As a customer
  I want to deposit into my account using ATM

Background:
  Given a customer with id 1 and pin 111 with balance 200 exists
  When I login to ATM with id 1 and pin 111

Scenario: Deposit one time
  When I deposit 100 into ATM
  Then my account balance is 300

Scenario: Deposit multiple times
  When I deposit 100 into ATM
  And I deposit 50 into ATM
  And I deposit 40.93 into ATM
  Then my account balance is 390.93