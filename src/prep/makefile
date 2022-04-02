all: ../../gen/dataprep/data/downloaded_data.csv ../../gen/analysis/input/private_room.csv ../../gen/analysis/input/combined_mean_data1.csv


../../gen/dataprep/data/downloaded_data.csv: download.R
	R --vanilla < download.R

../../gen/analysis/input/private_room.csv: ../../gen/dataprep/data/downloaded_data.csv transform.R
	R --vanilla < transform.R

../../gen/analysis/input/combined_mean_data1.csv: ../../gen/analysis/input/private_room.csv clean.R
	R --vanilla < clean.R
