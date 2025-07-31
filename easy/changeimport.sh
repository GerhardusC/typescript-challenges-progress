#!/bin/bash

FILES=$(ls);

for file in $FILES; do
	sed -i "s|import type { Equal, Expect } from '../type-challenges'|import type { Equal, Expect } from '../type-challenges'|" ./$file;
done
