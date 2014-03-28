echo 'Code Critics,Renraku' > re-count-port.csv

./pharo Renraku.image analyse --packages='Renraku' --number >> re-count-port.csv
echo -n , >> re-count-port.csv
./pharo Renraku.image eval "RERunner newWithDefault run numberOfImportantReports" >> re-count-port.csv
