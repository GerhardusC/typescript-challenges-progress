#!/bin/bash

FOLDERS="warm easy medium hard extreme";

for folder in $FOLDERS; do
	FILES=$(ls ./$folder);
	for file in $FILES; do
		sed -i "s|'@type-challenges/utils'|'../type-challenges'|" ./$folder/$file;
		echo changed ./$folder/$file;
	done
done
