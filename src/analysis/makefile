OUTPUT = ../../gen/analysis/output
INPUT = ../../gen/analysis/input


all: $(OUTPUT)/mean_availability.pdf $(OUTPUT)/mean_reviews.pdf $(OUTPUT)/mean_price.pdf $(OUTPUT)/final_score.csv $(OUTPUT)/top_10_student_cities.txt

$(OUTPUT)/mean_availability.pdf .$(OUTPUT)/mean_reviews.pdf $(OUTPUT)/mean_price.pdf: ../../gen/analysis/input/combined_mean_data1.csv plot.R
	R --vanilla < plot.R

$(OUTPUT)/final_score.csv: $(INPUT)/private_room.csv $(INPUT)/combined_mean_data1.csv mean.R
	R --vanilla < mean.R

$(OUTPUT)/top_10_student_cities.txt: position.R
	R --vanilla < position.R
