# CKMeans
# Language: R
# Input: CSV (network)
# Output: CSV (quanta)
# Tested with: PluMA 1.1, R 4.0.0
# Dependency: CKMeans.1d.dp


PluMA plugin that clusters data using the CKMeans (Wang and Song, 2011) algorithm.
The algorithm guarantees optimality univariate data and applies dynamic programming.
Clusters are represented as quanta, each with a unique identifier.

Expected input is a CSV file representing the data, where rows represent samples
and columns represent variables.  Variable names are in the first row and sample
identifiers are in the first column.

The output CSV file of quanta will be in the following format:

"A","B","C",....
"Sample1",3,1,1,...

Where the first row represents variable names and the second row their respective quanta (clusters).
The plugin is setup to execute CKMeans multiple times across multiple data samples, if so desired.
