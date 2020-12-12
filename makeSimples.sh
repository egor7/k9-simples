#!/bin/bash

sed -e 's/@/@@/g' -e 's/}/@}/g' -e 's/{/@{/g' -e 's/ /@ /g' -e 's/^/@t{/; s/$/}@*/' -e 's/flip/@ref{flip}/g' -e 's/plus/@ref{plus}/g' -e 's/negate/@ref{negate}/g' -e 's/minus/@ref{minus}/g' -e '1,10 s/first/@ref{first}/g' -e 's/times/@ref{times}/g' -e 's/divide/@ref{divide}/g' -e '1,20 s/where/@ref{where}/' -e 's/min\/and/@ref{min\/and}/g' -e 's/reverse/@ref{reverse}/g' -e 's/max\/or/@ref{max\/or}/g' -e 's/asc/@ref{asc}/g' -e 's/less/@ref{less}/g' -e 's/dsc/@ref{asc,dsc}/g' -e 's/more/@ref{less,more}/g' -e 's/group/@ref{group}/g' -e 's/equal/@ref{equal}/g' -e 's/not/@ref{not}/g' -e 's/match/@ref{match}/g' -e 's/enum/@ref{enum}/g' -e '1,20 s/key/@ref{key}/g' -e 's/enlist/@ref{enlist}/g' -e 's/cat/@ref{cat}/g' -e 's/sort/@ref{sort}/g' -e 's/.f.cut/@ref{[f]cut}/g' -e 's/count/@ref{count}/2' -e 's/.f.take/@ref{[f]take}/g' -e 's/floor/@ref{floor}/g' -e 's/.f.drop/@ref{[f]drop}/g' -e 's/string/@ref{string}/g' -e 's/cast/@ref{cast}/g' -e 's/unique+/@ref{unique+}/g' -e 's/find+/@ref{find+}/g' -e '20,100 s/type/@ref{type}/g' -e 's/.f.at/@ref{[f]at}/g' -e 's/value/@ref{value}/g' -e 's/.f.dot/@ref{[f]dot}/g' -e '10,100 s/+join/@ref{+join}/g' -e 's/scan/@ref{scan}/g' -e '1,30 s/over/@ref{scan,over}/g' -e 's/+split/@ref{+split}/g' -e 's/each@/@ref{each}@/g' -e 's/+has/@ref{+has}/g' -e 's/eachp/@ref{eachp}/g' -e 's/+bin/@ref{bin2,+bin}/g' -e 's/eachr/@ref{eachr}/g' -e 's/eachl/@ref{eachl}/g' -e '20,30 s/select/@ref{select}/g' -e '20,30 s/A/@ref{A}/g' -e 's/by@ B/@ref{by B}/g' -e '20,30 s/where@ C/@ref{where C}/g' -e '20,30 s/update/@ref{update}/g' -e 's/insert/@ref{insert}/g' -e 's/upsert/@ref{upsert}/g' -e 's/union/@ref{union}/g' -e 's/leftjoin/@ref{leftjoin}/g' -e 's/Verb/@ref{Verb}/' -e 's/Adverb/@ref{Adverb}/g' -e '1,20 s/Type/@ref{Noun,Type}/g' -e 's/I\/O/@ref{I\/O}/g' -e 's/Table/@ref{Tables,Table}/g' -e 's/DNU/@ref{Temporal Functions}/g' -e 's/List/@ref{List}/g' -e 's/Func/@ref{User Functions,Func}/g' -e 's/Dict/@ref{Dictionary,Dict}/g' -e '20,100 s/t:/@ref{t}:/g' -e 's/utable/@ref{utable}/g' -e 's/xtable/@ref{xtable}/g' -e 's/amend/@ref{amend}/g' -e 's/dmend/@ref{dmend}/g' -e 's/if@ else/@ref{cond,if else}/g' -e '1,20 s/date/@ref{date}/g' -e '6,20 s/time/@ref{time}/g' -e 's/bool/@ref{bool}/g' -e '1,10 s/int/@ref{int}/g' -e 's/flt/@ref{flt}/g' -e 's/char/@ref{char}/g' -e 's/name/@ref{name}/g' -e 's/uuid/@ref{uuid}/g' -e 's/System/@ref{System}/g' -e 's/read\/write@ csv/@ref{read csv,read}\/@ref{write csv,write}@ csv/g' -e 's/read\/write@ json/@ref{read json,read}\/@ref{write json,write}@ json/g' -e 's/r\/w@ line/@ref{r line,r}\/@ref{w line,w}@ line/g' -e 's/r\/w@ byte/@ref{r byte,r}\/@ref{w byte,w}@ byte/g' -e '20,30 s/ key/ @ref{key}/g' -e '20,30 s/unkey/@ref{unkey}/g' -e '20,30 s/meta/@ref{meta}/g' -e '20,30 s/@ in@ /@ @ref{in}@ /' -e '20,30 s/bin/@ref{bin}/g' -e '20,30 s/within/ @ref{within}/g' -e '20,30 s/exp/@ref{exp}/g' -e '20,30 s/log/@ref{log}/g' -e '20,30 s/sin/@ref{sin}/g' -e '20,30 s/cos/@ref{cos}/g' -e '20,30 s/sqr/@ref{sqr}/g' -e '20,30 s/sqrt/@ref{sqrt}/g' -e '20,30 s/div/@ref{div}/g' -e '20,30 s/mod/@ref{mod}/g' -e '20,30 s/bar/@ref{bar}/g' -e '20,30 s/top/@ref{topX,top}/g' -e '20,30 s/freq/@ref{freq}/g' -e '20,30 s/msum/@ref{msum}/g' -e '20,30 s/mavg/@ref{mavg}/g' -e '20,30 s/sums/@ref{sums}/g' -e '20,30 s/deltas/@ref{deltas}/g' -e '20,30 s/prm/@ref{prm}/g' -e '20,30 s/cmb/@ref{cmb}/g' k.d > k.d2

makeinfo k.manual.texi
texi2any --pdf k.manual.texi
texi2any --css-include=style.css --html k.manual.texi
texi2any --css-include=style.css --html --no-split k.manual.texi -o k9Simples.html


