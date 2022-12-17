#!/bin/bash
echo ""
echo "WELCOME to the Command Line Question of Group #22!"
echo ""

echo "Question 1:"

cut -f 16 ./additionalcontent/data_places_new.csv > places_location.csv

echo "- How many places can be found in Italy?"
grep -c "Italy" places_location.csv
echo "- How many places can be found in Spain?"
grep -c "Spain" places_location.csv
echo "- How many places can be found in France?"
grep -c "France" places_location.csv
echo "- How many places can be found in England?"
grep -c "England" places_location.csv
echo "- How many places can be found in the United States?"
grep -c -f unitedstates.txt places_location.csv

echo ""
echo "Question 2:"

cut -f 3,16 ./additionalcontent/data_places_new.csv > places_visitors.csv

echo "- How many average visitors has Italy?"
grep "Italy" places_visitors.csv | awk '{count=count+$1; n++} END {if (n > 0) print "Visitors: " count "  Places: " n "  Average: " count/n}'
echo "- How many average visitors has Spain?"
grep "Spain" places_visitors.csv | awk '{count=count+$1; n++} END {if (n > 0) print "Visitors: " count "  Places: " n "  Average: " count/n}'
echo "- How many average visitors has France?"
grep "France" places_visitors.csv | awk '{count=count+$1; n++} END {if (n > 0) print "Visitors: " count "  Places: " n "  Average: " count/n}'
echo "- How many average visitors has England?"
grep "England" places_visitors.csv | awk '{count=count+$1; n++} END {if (n > 0) print "Visitors: " count "  Places: " n "  Average: " count/n}'
echo "- How many average visitors have the United States?"
grep -f unitedstates.txt places_visitors.csv | awk '{count=count+$1; n++} END {if (n > 0) print "Visitors: " count "  Places: " n "  Average: " count/n}'

echo ""
echo "Question 3:"

cut -f 4,16 ./additionalcontent/data_places_new.csv > places_potentials.csv

echo "- How many potentials visitors has Italy?"
grep "Italy" places_potentials.csv | awk '{count=count+$1} END {print "Total: " count}'
echo "- How many potentials visitors has Spain?"
grep "Spain" places_potentials.csv | awk '{count=count+$1} END {print "Total: " count}'
echo "- How many potentials visitors has France?"
grep "France" places_potentials.csv | awk '{count=count+$1} END {print "Total: " count}'
echo "- How many potentials visitors has England?"
grep "England" places_potentials.csv | awk '{count=count+$1} END {print "Total: " count}'
echo "- How many potentials visitors have the U.S.?"
grep -f unitedstates.txt places_potentials.csv | awk '{count=count+$1} END {print "Total: " count}'