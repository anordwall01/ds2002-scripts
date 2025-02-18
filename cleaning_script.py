#!/usr/bin/python3

import pandas as pd
import sys

CSV = sys.argv[1]

print("creating data frame")

df = pd.read_csv(CSV)

print("data frame created")

print("there are this many rows in the df:")

print(df.to_string())

print("dropping NA rows")

df.dropna(inplace = True)


print("now there are this many rows in the df:")

print(df.to_string())

print("saving cleaned data frame")

df.to_csv('cleaned_data.csv')

print("clean file named cleaned_data.csv")
