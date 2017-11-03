#!/bin/bash
echo '######################################'
echo '#                Build               #'
echo '#              - START -             #'
echo '######################################'

cat FrontCover.md > prisma.md 
for i in `seq 1 10` ; do sed '$d' $i.* >> prisma.md && echo >> prisma.md ;done 
cat BackCover.md >> prisma.md
make all

echo '######################################'
echo '#                Build               #'
echo '#            - FINISHED -            #'
echo '######################################'
