**Special Variables**

For example, the $ character represents the process ID number, or PID, of the current shell:
```bash
echo $$
```

Variable	Description
$0	The filename of the current script.
$n	These variables correspond to the arguments with which a script was invoked. Here n is a positive decimal number corresponding to the position of an argument (the first argument is $1, the second argument is $2, and so on).
$#	The number of arguments supplied to a script.
$*	All the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2.
$@	All the arguments are individually double quoted. If a script receives two arguments, $@ is equivalent to $1 $2.
$?	The exit status of the last command executed.
$$	The process number of the current shell. For shell scripts, this is the process ID under which they are executing.
$!	The process number of the last background command.

**Command-Line Arguments**

The command-line arguments $1, $2, $3,...$9 are positional parameters, with $0 pointing to the actual command, program, shell script, or function and $1, $2, $3, ...$9 as the arguments to the command.

Following script uses various special variables related to command line −
```bash
cat > test.sh << EOF
#!/bin/sh

echo "File Name: \$0"
echo "First Parameter : \$1"
echo "Second Parameter : \$2"
echo "Quoted Values: \$@"
echo "Quoted Values: \$*"
echo "Total Number of Parameters : \$#"
EOF

cat test.sh
chmod +x test.sh
./test.sh Zara Ali

```

We can write the shell script shown below to process an unknown number of command-line arguments with either the $* or $@ special parameters −
```bash
cat > test.sh << EOF
#!/bin/sh

for TOKEN in \$*
do
   echo \$TOKEN
done
EOF

cat test.sh
chmod +x test.sh
./test.sh Zara Ali
echo $?

```