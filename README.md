# Steam-data-extraction
Tools to download prices of items from steam amrket

It uses powershell script to download data from site and python code to export data to excel

1) Prepare 'item id' text file first
-every new name must be written in separate line
-item id might find in the steam market url 'check png file'

2) Run powershell script

3) Run python script

It's currently version 1.0 shich has this major bug that only allows to download about half of the names from the txt file, then there is an error trying invoke request.
Current solution is to divide file on two and swtich the halfs (second png file). 
Need to figure out how to make this program more stable
