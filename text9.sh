#!/bin/bash

echo -n '输入10个数:'
read -a a

max=${a[0]};
for j in {0..9}
do
for i in {0..8}
do
    if [ ${a[$i]} -gt ${a[$i+1]} ]
    then
        t=${a[$i]};
        a[$i]=${a[$i+1]};
        a[$i+1]=$t;
    fi
done
done
for k in {0..9}
do
echo "第$k个元素为${a[$k]} ";
done
exit 0
