Problem Description:
=====================

Let’s say we have some customer records in a text file (customers.txt, see below) – one customer per line, JSON-encoded. We want to invite any customer within 100km of our Dublin office (GPS coordinates 53.3381985, -6.2592576) for some food and drinks on us.

Write a program that will read the full list of customers and output the names and user ids of matching customers (within 100 km), sorted by user id (ascending).

You can use the first formula from this Wikipedia article to calculate distance: https://en.wikipedia.org/wiki/Great-circle_distance but don't forget to convert degrees to radians. Your program should be tested.

Application Setup and usage:
=============================

1. bundle install
2. In the terminal type ``` ruby invite.rb guests.txt ```

Output:
=======

```
Guest list for Invitations
==========
"4 -- Ian Kehoe"
"5 -- Nora Dempsey"
"6 -- Theresa Enright"
"8 -- Eoin Ahearn"
"11 -- Richard Finnegan"
"12 -- Christina McArdle"
"13 -- Olive Ahearn"
"15 -- Michael Ahearn"
"17 -- Patricia Cahill"
"23 -- Eoin Gallagher"
"24 -- Rose Enright"
"26 -- Stephen McArdle"
"29 -- Oliver Ahearn"
"30 -- Nick Enright"
"31 -- Alan Behan"
"39 -- Lisa Ahearn"

```