#!/bin/bash

# Get the list of fastq.gz files in the current directory
files=$(ls *.fastq.gz)
md5source=$1

# Loop through each file and check its MD5 checksum
for file in $files
do
    # Generate the MD5 checksum for the file
    md5=$(md5sum $file | awk '{print $1}')

    # Get the expected MD5 checksum from the md5sum.source file
    expected_md5=$(grep $file $md5source | awk '{print $1}')

    # Compare the generated and expected MD5 checksums
    if [ "$md5" == "$expected_md5" ]
    then
        echo "$file: OK"
    else
        echo "$file: FAIL"
    fi
done
