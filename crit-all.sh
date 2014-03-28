echo 'Code Critics,Renraku' > all-count-port.csv

./pharo Renraku.image analyse --number >> all-count-port.csv
echo -n , >> all-count-port.csv
./pharo Renraku.image eval --save 'REPrefs default useAllPackages'
./pharo Renraku.image eval "RERunner newWithDefault run numberOfImportantReports" >> all-count-port.csv
