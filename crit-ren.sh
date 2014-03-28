echo 'Code Critics,Renraku' > re-count-report.csv

./pharo Renraku.image analyse --packages='Renraku' --number >> re-count-report.csv
echo -n , >> re-count-report.csv
./pharo Renraku.image eval "RERunner newWithDefault run numberOfImportantReports" >> re-count-report.csv
