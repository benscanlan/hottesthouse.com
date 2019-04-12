#SOURCE DATA: http://results.openaddresses.io/?runs=all#run
import pandas
import sys, os
from os.path import dirname, realpath
# filepath = realpath(__file__)
#
# dir_of_file = dirname(filepath)
# parent_dir_of_file = dirname(dir_of_file)
# parents_parent_dir_of_file = dirname(parent_dir_of_file)


database = os.path.abspath(__file__ + "/../../../database/CSV/city_of_roseville/us/ca")
#SOURCE: https://codereview.stackexchange.com/questions/181068/getting-the-grandparent-directory-of-the-current-code
os.chdir(database)
df = pandas.read_csv('city_of_roseville.csv', sep = ',')
print(df.head())
