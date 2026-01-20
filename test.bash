#!/bin/bash
# SPDX-FileCopyrightText: 2025 Takuto Irie
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0

out=$(echo 10 | ./divisors)
expected="1 2 5 10 
素数ではありません"
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(echo あ | ./divisors)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo  | ./divisors)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
