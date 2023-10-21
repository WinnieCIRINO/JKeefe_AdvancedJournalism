# Here's where we'll put our Make commands
greeting:
	echo 'hello world'

math:
	expr 2 + 2

	
all: directories download freshdata


directories:
	-mkdir tmp
	-mkdir data

download:
	curl "https://www.imf.org/external/datamapper/PCPIPCH@WEO/WEOWORLD?year=2023" -o tmp/inflation.json
	curl "https://www.imf.org/external/datamapper/api/v1/countries" -o tmp/countries.json 



