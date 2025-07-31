#!/bin/bash

FOLDERS="warm easy medium hard extreme";

for folder in $FOLDERS; do
	FILES=$(ls ./$folder);
	for file in $FILES; do
		sed -i "s|import type { Equal, Expect } from '@type-challenges/utils'|import type { Equal, Expect } from '../type-challenges'|" ./$folder/$file;
		echo changed ./$folder/$file;
	done
done
