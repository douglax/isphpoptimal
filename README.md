# isphpoptimal
Bash script to compare a list of key-values pairs  against php.ini to see if php configuration is optimal

===
As described in https://gist.github.com/thde/7153868 , the key-value pairs looks for performance and security configuration that is optimized for RHEL php 5.3.3

Other system configurations may be checked by modifying key-pair.txt file


===
USAGE:

isphpoptimal inputfile outputfile key-pair_file

inputfile is the php.ini including path, user needs read permissions on it
outfile is the (path +) file for reporting the differences
key-pair (path +) file is the list of values to compare. It uses a two column format separated by a tab character


