lpadmin -E -p "Three_South" -v dnssd://Three-South._ipps._tcp.local./ -P /Library/Printers/PPDs/Contents/Resources/Xerox\ WorkCentre\ 7845.gz 
lpadmin -p Three_South -o media=na_letter_8.5x11in -o printer-is-shared=false
cupsenable Three_South
cupsaccept Three_South

# ---------------------------------------


sudo lpadmin -E -p "MMLaw_Front_Printer" -v lpd://10.86.43.40/ -P "/Library/Printers/PPDS/Contents/Resources/KONICAMINOLTAC454e.gz" -o PaperSources="PC410" -o Finisher=FS534 -o KMPunchUnit="PK520-23”
# This first line sets up the printer and the initial options, things like if there’s a duplexer, extra feed trays, a hole punch / stapler, etc.
# Those initial -o this=that items have to be included on this line. They didn’t work if I put them on the next.

sudo lpadmin -p "MMLaw_Front_Printer" -o KMDuplex="Single" -o SelectColor=Grayscale -o ColorModel=Gray -o SimulationProfile=None
# This line sets other default options, like duplexing and color. There was a conflict with the “auto” on Simulation Profile (whatever that is) so I set it to none and it worked.
# Maybe you can combine these two lines into one, but I didn’t try it.

sudo cupsenable “MMLaw_Front_Printer”
# This enables the printer (without it, the queue will be paused)

sudo cupsaccept “MMLaw_Front_Printer"
# This sets the printer to accept jobs (without it the queue will be paused)
