#!/bin/sh

filename=test.txt
vi test.txt <<EndOfCommands
i
This file was created automatically from
a shell script
^[
ZZ
EndOfCommands
