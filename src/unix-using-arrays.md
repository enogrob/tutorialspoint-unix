**Unix - Using Shell Arrays**

A shell variable is capable enough to hold a single value. This type of variables are called scalar variables.

Shell supports a different type of variable called an array variable that can hold multiple values at the same time. Arrays provide a method of grouping a set of variables. Instead of creating a new name for each variable that is required, you can use a single array variable that stores all the other variables.

All the naming rules discussed for Shell Variables would be applicable while naming arrays.

**Defining Array Values**
The difference between an array variable and a scalar variable can be explained as follows.

Say that you are trying to represent the names of various students as a set of variables. Each of the individual variables is a scalar variable as follows −
```bash
NAME01="Zara"
NAME02="Qadir"
NAME03="Mahnaz"
NAME04="Ayan"
NAME05="Daisy"
```

We can use a single array to store all the above mentioned names. Following is the simplest method of creating an array variable is to assign a value to one of its indices. This is expressed as follows −
```bash
array_name[index]=value
```

Here array_name is the name of the array, index is the index of the item in the array that you want to set, and value is the value you want to set for that item.

As an example, the following commands −
```bash
NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
```

```bash
# If you are using ksh shell the here is the syntax of array initialization −
set -A array_name value1 value2 ... valuen

# If you are using bash shell the here is the syntax of array initialization −
array_name=(value1 ... valuen)
```

**Accessing Array Values**
After you have set any array variable, you access it as follows −
```bash
${array_name[index]}
```

Here array_name is the name of the array, and index is the index of the value to be accessed. Following is the simplest

 example −
```bash
cat > test.sh << EOF
#!/bin/sh

NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Index: \${NAME[0]}"
echo "Second Index: \${NAME[1]}"
EOF
```

This would produce following result −
```bash
./test.sh

First Index: Zara
Second Index: Qadir
```

You can access all the items in an array in one of the following ways −
```bash
${array_name[*]}
${array_name[@]}
```

Here array_name is the name of the array you are interested in. Following is the simplest example −
```bash
cat > test.sh << EOF
#!/bin/sh

NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Method: \${NAME[*]}"
echo "Second Method: \${NAME[@]}"
EOF
```

This would produce following result −
```bash
./test.sh

First Method: Zara Qadir Mahnaz Ayan Daisy
Second Method: Zara Qadir Mahnaz Ayan Daisy
```
