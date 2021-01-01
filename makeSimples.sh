#!/bin/bash

sed -e 's/@/@@/g' \
    -e 's/}/@}/g' \
    -e 's/{/@{/g' \
    -e 's/ /@ /g' \
    -e 's/^/@t{/; s/$/}@*/' \
    -e 's/flip/@ref{flip}/g' \
    -e 's/plus/@ref{plus}/g' \
    -e 's/negate/@ref{negate}/g' \
    -e 's/minus/@ref{minus}/g' \
    -e '1,10 s/first/@ref{first}/g' \
    -e 's/times/@ref{times}/g' \
    -e 's/divide/@ref{divide}/g' \
    -e '1,20 s/where/@ref{where}/' \
    -e 's/min\/and/@ref{min\/and}/g' \
    -e 's/reverse/@ref{reverse}/g' \
    -e 's/max\/or/@ref{max\/or}/g' \
    -e 's/asc/@ref{asc}/g' \
    -e 's/less/@ref{less}/g' \
    -e 's/desc/@ref{desc}/g' \
    -e 's/more/@ref{more}/g' \
    -e 's/group/@ref{group}/g' \
    -e 's/equal/@ref{equal}/g' \
    -e 's/not/@ref{not}/g' \
    -e 's/match/@ref{match}/g' \
    -e 's/enum/@ref{enum}/g' \
    -e '1,20 s/key/@ref{key}/g' \
    -e 's/list/@ref{enlist,list}/g' \
    -e 's/cat/@ref{cat}/g' \
    -e 's/sort/@ref{sort}/g' \
    -e 's/cut/@ref{cut}/g' \
    -e 's/count/@ref{count}/g' \
    -e 's/take/@ref{take}/g' \
    -e 's/floor/@ref{floor}/g' \
    -e 's/drop/@ref{drop}/g' \
    -e 's/string/@ref{string}/g' \
    -e 's/parse/@ref{parse}/g' \
    -e 's/unique/@ref{unique}/g' \
    -e 's/find/@ref{find}/g' \
    -e '20,100 s/type/@ref{type}/g' \
    -e 's/]at/]@ref{at}/g' \
    -e 's/value/@ref{value}/g' \
    -e 's/dot/@ref{dot}/g' \
    -e '1,10 s/join/@ref{join}/g' \
    -e '1,5 s/scan/@ref{scan}/g' \
    -e '1,5 s/over/@ref{over}/g' \
    -e '6,15 s/scan/@ref{cscan,scan}/g' \
    -e '6,15 s/over/@ref{cover,over}/g' \
    -e 's/split/@ref{split}/g' \
    -e 's/each@/@ref{each}@/g' \
    -e 's/eachp/@ref{eachp}/g' \
    -e 's/+binXX/@ref{bin2,+bin}/g' \
    -e 's/eachr/@ref{eachr}/g' \
    -e 's/eachl/@ref{eachl}/g' \
    -e '20,30 s/select/@ref{select}/g' \
    -e '20,30 s/delete/@ref{delete}/g' \
    -e '20,30 s/A/@ref{A}/g' \
    -e '25,26 s/[C]/[@ref{C}]/g' \
    -e '20,30 s/where@ B/@ref{where B}/g' \
    -e '20,30 s/update/@ref{update}/g' \
    -e 's/insert/@ref{insert}/g' \
    -e 's/upsert/@ref{upsert}/g' \
    -e 's/union/@ref{union}/g' \
    -e 's/leftjoin/@ref{leftjoin}/g' \
    -e 's/verb/@ref{Verb,verb}/' \
    -e 's/adverb/@ref{Adverb,adverb}/g' \
    -e '1,20 s/noun/@ref{Noun,noun}/g' \
    -e 's/i\/o/@ref{I\/O,i\/o}/g' \
    -e 's/utable/@ref{utable}/g' \
    -e 's/ntable/@ref{ntable}/g' \
    -e 's/@ table/@ @ref{Tables,table}/g' \
    -e 's/DNU/@ref{Temporal Functions,.z.d}/' \
    -e 's/@ list/@ @ref{list}/g' \
    -e 's/func/@ref{User Functions,func}/g' \
    -e 's/expr/@ref{Expression,expr}/g' \
    -e 's/dict/@ref{Dictionary,dict}/g' \
    -e '20,100 s/t:/@ref{t}:/g' \
    -e 's/cond/@ref{cond}/g' \
    -e 's/amend/@ref{amend}/g' \
    -e 's/dmend/@ref{dmend}/g' \
    -e 's/Control/@ref{cond,Control}/g' \
    -e 's/if@ else/@ref{cond,if else}/g' \
    -e '1,20 s/date/@ref{date}/g' \
    -e '6,20 s/time/@ref{time}/g' \
    -e 's/bool/@ref{bool}/g' \
    -e '1,10 s/int/@ref{int}/g' \
    -e 's/flt/@ref{flt}/g' \
    -e '1,10 s/char/@ref{char}/g' \
    -e 's/name/@ref{name}/g' \
    -e 's/uuid/@ref{uuid}/g' \
    -e 's/System/@ref{System}/g' \
    -e 's/`csv?/@ref{read csv,`csv?}/g' \
    -e 's/`csv@ /@ref{write csv,`csv@ }/g' \
    -e 's/`js?/@ref{read json,`js?}/g' \
    -e 's/`js@ /@ref{write json,`js@ }/g' \
    -e 's/r\/w@ line/@ref{r line,r}\/@ref{w line,w}@ line/g' \
    -e 's/r\/w@ char/@ref{r byte,r}\/@ref{w byte,w}@ char/g' \
    -e 's/r\/w@ data/@ref{r data,r}\/@ref{w data,w}@ data/g' \
    -e 's/k-ipc@ set/@ref{k-ipc set}/g' \
    -e 's/https@ get/@ref{https get}/g' \
    -e 's/ffi\/py\/js\/../@ref{ffi\/py\/js\/..}/g' \
    -e '20,30 s/ key/ @ref{key}/g' \
    -e '20,30 s/unkey/@ref{unkey}/g' \
    -e '20,30 s/meta/@ref{meta}/g' \
    -e '20,30 s/@ in@ /@ @ref{in}@ /' \
    -e '20,30 s/bin/@ref{bin}/g' \
    -e '20,30 s/within/ @ref{within}/g' \
    -e '20,30 s/exp/@ref{exp}/g' \
    -e '20,30 s/log/@ref{log}/g' \
    -e '20,30 s/sin/@ref{sin}/g' \
    -e '20,30 s/cos/@ref{cos}/g' \
    -e '20,30 s/sqr@ /@ref{sqr}@ /g' \
    -e '20,30 s/sqrt/@ref{sqrt}/g' \
    -e '20,30 s/div/@ref{div}/g' \
    -e '20,30 s/mod/@ref{mod}/g' \
    -e '20,30 s/bar/@ref{bar}/g' \
    -e '20,30 s/top/@ref{topX,top}/g' \
    -e '20,30 s/freq/@ref{freq}/g' \
    -e '20,30 s/msum/@ref{msum}/g' \
    -e '20,30 s/mavg/@ref{mavg}/g' \
    -e '20,30 s/sums/@ref{sums}/g' \
    -e '20,30 s/deltas/@ref{deltas}/g' \
    -e '20,30 s/rand/@ref{rand}/g' \
    -e '20,30 s/has/@ref{has}/g' \
    -e '20,30 s/first/@ref{first}/g' \
    -e '20,30 s/last/@ref{Hlast,last}/g' \
    -e '23,24 s/sum/@ref{Hsum,sum}/g' \
    -e '20,30 s/min/@ref{Hmin,min}/g' \
    -e '20,30 s/max/@ref{Hmax,max}/g' \
    -e '20,30 s/prm/@ref{prm}/g' \
    -e '20,30 s/cmb/@ref{cmb}/g' k.d > k.d2

texi2any --fill-column=202 --paragraph-indent=none k.manual.texi
texi2any --pdf k.manual.texi
texi2any --css-include=style.css --html k.manual.texi
texi2any --css-include=style.css --html --no-split k.manual.texi -o k9Simples.html


sed -i '' -e 's/Top (Shakti (k9) tutorial)/Shakti (k9) tutorial/g' k9/index.html
