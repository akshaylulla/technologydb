import csv

with open('drexel-tech.csv', mode='r') as csv_file_1, open('categories.csv', mode='w') as csv_file_2:
    fieldnames = ['tech_id', 'category']
    writer = csv.DictWriter(csv_file_2, fieldnames=fieldnames)
    writer.writeheader()
    
    reader = csv.DictReader(csv_file_1)
    for row in reader:
        category_list = row['categories'][1:-1].split(',')
        for category in category_list:
            writer.writerow({'tech_id': row['id'], 'category': category.strip()})