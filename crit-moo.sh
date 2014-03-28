PACKAGES="Moose-Help Moose-Core Famix-Specifications Famix-Core Famix-Implementation Famix-Smalltalk Famix-Java Famix-C Famix-Extensions Famix-File Moose-Hismo Moose-HismoImporter Moose-Test-HismoImporter Famix-SourceAnchor Moose-GenericImporter Moose-SmalltalkImporter Moose-MonticelloImporter Moose-Finder Moose-Settings Moose-Wizard"

echo 'Code Critics,Renraku' > moo-count-report.csv

./pharo Renraku.image save Moose

./pharo Moose.image config \
  http://www.smalltalkhub.com/mc/Moose/Moose/main \
  ConfigurationOfMoose \
  --install=development

./pharo Moose.image analyse \
  --packages $PACKAGES
  --number >> all-count-report.csv


echo -n , >> all-count-report.csv
./pharo Renraku.image eval --save 'REPrefs default useAllPackages'
./pharo Renraku.image eval "RERunner newWithDefault run numberOfImportantReports" >> all-count-report.csv
