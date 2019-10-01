Feature: User can see Promotion details in cart.
    In order to be informed what I am shopping for
    As a new user
    I want to see relevant Promotion details in Cart depending on my selection.

#1
    Scenario: BOX za 1 EUR - No Subscription

		Given that I select Box option
        When I select "BOX za 1 EUR" Promotion
        Then I see the following cart items
		|   item                |   value                     |
		| YellowRibbonPromoText | BOX za 1 EUR                |
		| ContractLength        | 24 meseca                   |

#2
    Scenario: BOX za 1 EUR - Subscription 3 months
		Given that I select Box option
        When I select Promotion "BOX za 1 EUR"
        And I select Subscription "3 meseca"
        Then I see the following cart items
		|		 item           |    value                    |
		| YellowRibbonPromoText | BOX za 1 EUR                |
		| ContractLength        | 24 meseca                   |
		| SubscriptionLenght    | 3 meseca                    |
		| SubscriptionAmount    | 47.7 EUR                    |
		| OriginalBoxPrice      | 120 EUR                     |
		| NewBoxPrice           | 1 EUR                       |
		| ActivationFee         | 40 EUR                      |
		| TransportationFee     | 10 EUR                      |
		| Total                 | 98.7 EUR                    |
		| Savings               | 119 EUR                     |
		
#3
    Scenario: BOX za 1 EUR - Subscription 6 months
        When I select Promotion "BOX za 1 EUR"
        And I select Subscription "6 meseci"
        Then I see the following cart items
		|		 item           |    value                    |
		| YellowRibbonPromoText | BOX za 1 EUR                |
		| ContractLength        | 24 meseca                   |
		| SubscriptionLenght    | 6 meseci                    |
		| SubscriptionAmount    | 95.4 EUR                    |
		| OriginalBoxPrice      | 120 EUR                     |
		| NewBoxPrice           | 1 EUR                       |
		| ActivationFee         | 40 EUR                      |
		| TransportationFee     | 10 EUR                      |
		| Total                 | 146.4 EUR                   |
		| Savings               | 119 EUR                     |
#4
    Scenario: BOX za 1 EUR - Subscription 12 months
        When I select Promotion "BOX za 1 EUR"
        And I select Subscription "12 meseci"
        Then I see the following cart items
		|		 item           |    value                    |
		| YellowRibbonPromoText | BOX za 1 EUR                |
		| ContractLength        | 24 meseca                   |
		| SubscriptionLenght    | 12 meseci                   |
		| SubscriptionAmount    | 190.6 EUR                   |
		| OriginalBoxPrice      | 120 EUR                     |
		| NewBoxPrice           | 1 EUR                       |
		| ActivationFee         | 40 EUR                      |
		| TransportationFee     | 10 EUR                      |
		| Total                 | 241.6 EUR                   |
		| Savings               | 119 EUR                     |

#5
    Scenario: 50% popusta na box - Predefined Subscription
        When I select Promotion "50% popusta na box"
        Then I see the following cart items
		|		 item           |    value                     |
		| YellowRibbonPromoText | 50% popusta na box           |
		| ContractLength        | 24 meseca                    |
		| SubscriptionLenght    | 12 meseci                    |
		| SubscriptionAmount    | 190.8 EUR                    |
		| OriginalBoxPrice      | 120 EUR                      |
		| NewBoxPrice           | 60 EUR                       |
		| ActivationFee         | 40 EUR                       |
		| TransportationFee     | 10 EUR                       |
		| Total                 | 300.8 EUR                    |
		| Savings               | 60 EUR                       |
#6
    Scenario: BOX bez akcijske cene - No Subscription
        When I select Promotion "BOX bez akcijske cene"
        Then I see the following cart items
		|		 item           |    value                     |
		| ContractLength        | 24 meseca                    |
		| SubscriptionLenght    | 1 mesec                      |
		| SubscriptionAmount    | 15.9 EUR                     |
		| OriginalBoxPrice      | 120 EUR                      |
		| ActivationFee         | 40 EUR                       |
		| TransportationFee     | 10 EUR                       |
		| Total                 | 185.9 EUR                    |
		
    Scenario: BOX bez akcijske cene - Subscription 3 months
        When I select Promotion "BOX bez akcijske cene"
        And I select Subscription "3 meseca"
        Then I see the following cart items
		|		 item           |    value                     |
		| ContractLength        | 24 meseca                    |
		| SubscriptionLenght    | 3 meseca                     |
		| SubscriptionAmount    | 47.7 EUR                     |
		| OriginalBoxPrice      | 120 EUR                      |
		| ActivationFee         | 40 EUR                       |
		| TransportationFee     | 10 EUR                       |
		| Total                 | 217.7 EUR                    |
#8
    Scenario: BOX bez akcijske cene - Subscription 6 months
        When I select Promotion "BOX bez akcijske cene"
        And I select Subscription "6 meseci"
        Then I see the following cart items
		|		 item           |    value                     |
		| ContractLength        | 24 meseca                    |
		| SubscriptionLenght    | 6 meseci                     |
		| SubscriptionAmount    | 95.4 EUR                     |
		| OriginalBoxPrice      | 120 EUR                      |
		| ActivationFee         | 40 EUR                       |
		| TransportationFee     | 10 EUR                       |
		| Total                 | 265.4 EUR                    |
#9
    Scenario: BOX bez akcijske cene - Subscription 12 months
        When I select Promotion "BOX bez akcijske cene"
        And I select Subscription "12 meseci"
        Then I see the following cart items
		|		 item           |    value                     |
		| ContractLength        | 24 meseca                    |
		| SubscriptionLenght    | 12 meseci                    |
		| SubscriptionAmount    | 190.8 EUR                    |
		| OriginalBoxPrice      | 120 EUR                      |
		| ActivationFee         | 40 EUR                       |
		| TransportationFee     | 10 EUR                       |
		| Total                 | 360.8 EUR                    |

#10
		Scenario: 3 meseca gratis - No Subscription
        When I select "3 meseca gratis" Promotion
        Then I see the following cart items
		|   item                |   value                     |
		| YellowRibbonPromoText | 3 meseca gratis             |
		| ContractLength        | 24 meseca                   |

#11
    Scenario: 3 meseca gratis - Subscription 3 months
		Given that I select No Box option
        When I select Promotion "3 meseca gratis"
        And I select Subscription "3 meseca"
        Then I see the following cart items
		|		 item           |    value                    |
		| YellowRibbonPromoText | 3 meseca gratis             |
		| ContractLength        | 24 meseca                   |
		| SubscriptionLenght    | 3 meseca                    |
		| SubscriptionAmount    | 47.7 EUR                    |
		| Total                 | 47.7 EUR                    |

#12
    Scenario: 3 meseca gratis - Subscription 6 months
        When I select Promotion "3 meseca gratis"
        And I select Subscription "6 meseci"
        Then I see the following cart items
		|		 item           |    value                    |
		| YellowRibbonPromoText | 3 meseca gratis             |
		| ContractLength        | 24 meseca                   |
		| SubscriptionLenght    | 6 meseca                    |
		| SubscriptionAmount    | 95.4 EUR                    |
		| Total                 | 95.4 EUR                    |
#13
    Scenario: 3 meseca gratis - Subscription 12 months
        When I select Promotion "3 meseca gratis"
        And I select Subscription "12 meseci"
        Then I see the following cart items
		|		 item           |    value                    |
		| YellowRibbonPromoText | 3 meseca gratis             |
		| ContractLength        | 24 meseca                   |
		| SubscriptionLenght    | 12 meseci                   |
		| SubscriptionAmount    | 190.8 EUR                   |
		| Total                 | 190.8 EUR                   |

#14
    Scenario: Plati 10 gledaj 12 meseci - Predefined Subscription
        When I select Promotion "Plati 10 gledaj 12 meseci"
        Then I see the following cart items
		|		 item           |    value                    |
		| YellowRibbonPromoText | Plati 10 gledaj 12 meseci   |
		| ContractLength        | 24 meseca                   |
		| SubscriptionLenght    | 12 meseci                   |
		| SubscriptionAmount    | 190.8 EUR                   |
		| Total                 | 190.8 EUR                   |
#15
    Scenario: Izaberi period trajanja pretplate - No Subscription
        When I select Promotion "Izaberi period trajanja pretplate"
        Then I see the following cart items
		|		 item           |    value                    |
		| ContractLength        | 24 meseca                   |
		| SubscriptionLenght    | 1 mesec                     |
		| SubscriptionAmount    | 15.9 EUR                    |
		| Total                 | 15.9 EUR                    |

#16
    Scenario: Izaberi period trajanja pretplate - Subscription 3 months
        When I select Promotion "Izaberi period trajanja pretplate"
        And I select Subscription "3 meseca"
        Then I see the following cart items
		|		 item           |    value                    |
		| ContractLength        | 24 meseca                   |
		| SubscriptionLenght    | 3 meseca                    |
		| SubscriptionAmount    | 47.7 EUR                    |
		| Total                 | 47.7 EUR                    |

#17
    Scenario: Izaberi period trajanja pretplate - Subscription 6 months
        When I select Promotion "Izaberi period trajanja pretplate"
        And I select Subscription "6 meseci"
        Then I see the following cart items
		|		 item           |    value                    |
		| ContractLength        | 24 meseca                   |
		| SubscriptionLenght    | 6 meseci                    |
		| SubscriptionAmount    | 95.4 EUR                    |
		| Total                 | 95.4 EUR                    |
#18
    Scenario: Izaberi period trajanja pretplate - Subscription 12 months
        When I select Promotion "Izaberi period trajanja pretplate"
        And I select Subscription "12 meseci"
        Then I see the following cart items
		|		 item           |    value                    |
		| ContractLength        | 24 meseca                   |
		| SubscriptionLenght    | 12 meseci                   |
		| SubscriptionAmount    | 190.8 EUR                   |
		| Total                 | 190.8 EUR                   |