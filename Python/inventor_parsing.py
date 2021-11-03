import csv

with open('drexel-tech.csv', mode='r') as csv_file_1, open('inventors.csv', mode='w') as csv_file_2:
    fieldnames = ['tech_id', 'inventor']
    writer = csv.DictWriter(csv_file_2, fieldnames=fieldnames)
    writer.writeheader()
    
    reader = csv.DictReader(csv_file_1)
    for row in reader:
        inventor_list = row['inventors'].split(',')
        for inventor in inventor_list:
            writer.writerow({'tech_id': row['id'], 'inventor': inventor.strip()})