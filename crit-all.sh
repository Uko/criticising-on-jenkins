echo 'Code Critics,Renraku' > all-count-report.csv

./pharo Renraku.image analyse --number >> all-count-report.csv
echo -n , >> all-count-report.csv
./pharo Renraku.image eval --save 'REPrefs default useAllPackages'
./pharo Renraku.image eval "RERunner newWithDefault run numberOfImportantReports" >> all-count-report.csv
