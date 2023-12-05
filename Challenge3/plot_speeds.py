import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import argparse
# read argument for the input file

parser = argparse.ArgumentParser(description='Plot the speed of the program, the format should be: program cores dataset time, separated by a space')
parser.add_argument('input_file', metavar='input_file', type=str,
                    help='the input file')
parser.add_argument('output_file', metavar='output_file', type=str,
                    help='the output file') 

args = parser.parse_args()

df = pd.read_csv(args.input_file, sep=" ", header=None)

df.columns = ["program", "cores", "dataset", "time"]

# plot with the line and the points

# sns.set(style="whitegrid")
ax = sns.lineplot(x="dataset", y="time", hue="program", size="cores", data=df)
ax = sns.scatterplot(x="dataset", y="time", hue="program",
                     data=df, size="cores", legend=False)
ax.set(xlabel='Dataset size', ylabel='Time (s)')
plt.title("AliScale: execution time of the alignment programs")
plt.xscale("log")

plt.savefig(args.output_file)
