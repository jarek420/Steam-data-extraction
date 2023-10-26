# Steam-data-extraction
Tools to download prices of items from steam amrket

It uses powershell script to download data from site and python code to export data to excel

1) Prepare 'item id' text file first
-every new name must be written in separate line
-item id might find in the steam market url 'check png file' (click the item adn you will find url there)
  Right now it's set to divide file on the 74 item id and then counting it up to 127
  The n parameter in the png file is the number of exztracting items I think right now it might rewad  up to 90 rows
per script running. then add another file division


3) Run powershell script

4) Run python script

It's currently version 1.0 shich has this major bug that only allows to download about half of the names from the txt file, then there is an error trying invoke request.
Current solution is to divide file on two and swtich the halfs (second png file). 
Need to figure out how to make this program more stable
