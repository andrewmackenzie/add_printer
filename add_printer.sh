lpadmin -E -p "Three_South" -v dnssd://Three-South._ipps._tcp.local./ -P /Library/Printers/PPDs/Contents/Resources/Xerox\ WorkCentre\ 7845.gz 
lpadmin -p Three_South -o media=na_letter_8.5x11in -o printer-is-shared=false
cupsenable Three_South
cupsaccept Three_South
