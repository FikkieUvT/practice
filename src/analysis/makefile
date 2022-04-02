all: ../../gen/analysis/output/mean_availability.pdf ../../gen/analysis/output/mean_reviews.pdf ../../gen/analysis/output/mean_price.pdf ../../gen/analysis/output/final_score.csv ../../gen/analysis/output/top_10_student_cities.txt

../../gen/analysis/output/mean_availability.pdf ../../gen/analysis/output/mean_reviews.pdf ../../gen/analysis/output/mean_price.pdf: ../../gen/analysis/input/combined_mean_data1.csv plot.R
	R --vanilla < plot.R

../../gen/analysis/output/final_score.csv: ../../gen/analysis/input/private_room.csv ../../gen/analysis/input/combined_mean_data1.csv mean.R
	R --vanilla < mean.R

../../gen/analysis/output/top_10_student_cities.txt: position.R
	R --vanilla < position.R
