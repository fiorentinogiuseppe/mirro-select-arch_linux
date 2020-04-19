#!/bin/bash
cp /etc/packman.d/mirrorlist /etc/packman.d/mirrorlist.old
cat /etc/packman.d/mirrorlist | grp -A 1 "## Brazil" | grep -v -- "^--$" > tmp.txt
cat /etc/packman.d/mirrorlist | head -5 > tmp_head.txt
cat tmp_head.txt tmp.txt > /etc/packman.d/mirrorlist
