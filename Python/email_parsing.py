import csv
import re

with open('drexel-tech.csv', mode='r') as csv_file_1, open('drexel-tech-2.csv', mode='w') as csv_file_2:
    reader = csv.DictReader(csv_file_1)
    column_names = ['title', 'link', 'posted', 'inventors', 'categories', 'contact', 'id']
    writer = csv.DictWriter(csv_file_2, fieldnames=column_names)
    writer.writeheader()
    for row in reader:
        new_row = {'title': row['title'], 'link': row['link'], 'posted': row['posted'], 'inventors': row['inventors'], 'categories': row['categories'], 'id': row['id']}
        email = re.findall(r"\s[^@\s]+@[^@\s]+\.[^@\s]+", row['contact'])
        if not email:
            continue
        email = email[0]
        if email[0:2] == '\n':
            email = email[2:]
        if email[0] == ' ':
            email = email[1:]
        email = email.strip()
        email = email.lower()
        new_row['contact'] = email
        writer.writerow(new_row)
        # print(re.findall(r"[a-z0-9\.\-+_]+@[a-z0-9\.\-+_]+\.[a-z]+", row['contact']))