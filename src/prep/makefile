DATA = ../../gen/dataprep/data
INPUT = ../../gen/analysis/input

all: $(DATA)/downloaded_data.csv $(INPUT)/private_room.csv $(INPUT)/combined_mean_data1.csv


$(DATA)/downloaded_data.csv: download.R
	R --vanilla < download.R

$(INPUT)/private_room.csv: $(DATA)/downloaded_data.csv transform.R
	R --vanilla < transform.R

$(INPUT)/combined_mean_data1.csv: $(INPUT)/private_room.csv clean.R
	R --vanilla < clean.R
