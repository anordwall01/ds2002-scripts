#!/usr/bin/python3

import pandas as pd

CSV=$1

echo "creating data frame"

df = pd.read_csv('$CSV')

echo "data frame created"

echo "there are this many rows in the df:"

print(df.to_string())

echo "dropping NA rows"

df.dropna(inplace = True)


echo "now there are this many rows in the df:"

print(df.to_string())

echo "saving cleaned data frame"

df.to_csv('cleaned_data.csv')

echo "clean file named cleaned_data.csv"
