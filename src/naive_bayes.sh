# A bash script for building a naive bayes text classifier

# Based on Doing Data Science (Schutt and O'Neill, 105)

# how to use the code
if [ $# -eq 1 ]
    then
    word=$1
else
    echo "usage: naive_bayes.sh <word>"
    exit
fi

# if the file doesn't exist, download the file
if ! [ -e enron1.tar.gx ]
    then
    wget "http://www.aueb.gr/users/ion/data/enron-spam/preprocessed/enron1.tar.gz"
fi

# if the directory doesn't exist, uncompress the file
if ! [ -d enron1 ]
    then
    tar zxvf enron1.tar.gz

# change into dir
cd enron1

