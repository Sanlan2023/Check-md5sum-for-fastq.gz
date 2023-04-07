# Check-md5sum-for-fastq.gz
This is a Bash script that checks the MD5 checksum of each file in the current directory against the expected MD5 checksum stored in an md5sum.source file.

The ls *.fastq.gz command retrieves a list of all the .fastq.gz files in the current directory and assigns them to the variable files.

The md5source=$1 command pass the 1st argument when you run the script to the md5source file in the script.

The script then loops through each file in the list and generates an MD5 checksum for the file using the md5sum command. The awk command extracts the first field (the checksum value) from the output of the md5sum command.

Next, the script extracts the expected MD5 checksum for the file from the md5sum.source file using the grep command. The expected MD5 checksum is the first field in the line that matches the filename. The awk command extracts the first field (the checksum value) from the output of the grep command.

The script then compares the generated and expected MD5 checksums using the if statement. If the two values match, the script outputs "OK" for the file. If they don't match, the script outputs "FAIL" for the file.

You can run this script by saving it as a text file with a .sh extension (e.g., md5check.sh) and executing it in the Terminal with the bash command followed by the filename (e.g., bash md5check.sh md5sum.source). Alternativly, youo can use 'chmod +x MD5sum.sh' to make the script executable, and then use './md5check.sh' to run the code. Note that you need to provide the path to the md5sum.source file as an argument to the script when you run it (e.g., bash md5check.sh yourMd5sum.source). 
