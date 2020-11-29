#!/bin/bash

sed -e 's/@/@@/g' -e 's/}/@}/g' -e 's/{/@{/g' -e 's/ /@ /g' -e 's/^/@t{/; s/$/}@*/' -e 's/flip/@ref{flip}/g' -e 's/plus/@ref{plus}/g' -e 's/negate/@ref{negate}/g' -e 's/minus/@ref{minus}/g' -e 's/first/@ref{first}/g' -e 's/times/@ref{times}/g' -e 's/divide/@ref{divide}/g' -e '10,100 s/where/@ref{where}/' -e 's/min\/and/@ref{min\/and}/g' -e 's/reverse/@ref{reverse}/g' -e 's/max\/or/@ref{max\/or}/g' -e 's/asc/@ref{asc}/g' -e 's/less/@ref{less}/g' -e 's/dsc/@ref{asc,dsc}/g' -e 's/more/@ref{less,more}/g' -e 's/group/@ref{group}/g' -e 's/equal/@ref{equal}/g' -e 's/not/@ref{not}/g' -e 's/match/@ref{match}/g' -e 's/enum/@ref{enum}/g' -e '10,100 s/key/@ref{key}/g' -e 's/enlist/@ref{enlist}/g' -e 's/cat/@ref{cat}/g' -e 's/sort/@ref{sort}/g' -e 's/.f.cut/@ref{[f]cut}/g' -e 's/count/@ref{count}/2' -e 's/.f.take/@ref{[f]take}/g' -e 's/floor/@ref{floor}/g' -e 's/.f.drop/@ref{[f]drop}/g' -e 's/string/@ref{string}/g' -e 's/cast/@ref{cast}/g' -e 's/unique+/@ref{unique+}/g' -e 's/find+/@ref{find+}/g' -e '20,100 s/type/@ref{type}/g' -e 's/.f.at/@ref{[f]at}/g' -e 's/value/@ref{value}/g' -e 's/.f.dot/@ref{[f]dot}/g' -e '10,100 s/join/@ref{join}/g' -e 's/scan/@ref{scan}/g' -e '1,30 s/over/@ref{scan,over}/g' -e 's/split/@ref{split}/g' -e 's/each@/@ref{each}@/g' -e 's/+has/@ref{+has}/g' -e 's/eachp/@ref{eachp}/g' -e 's/+bin/@ref{bin2,+bin}/g' -e 's/eachr/@ref{eachr}/g' -e 's/eachl/@ref{eachl}/g' -e '1,20 s/select/@ref{select}/g' -e 's/A/@ref{A}/g' -e 's/by@ B/@ref{by B}/g' -e '1,10 s/where@ C/@ref{where C}/g' -e 's/update/@ref{update}/g' -e 's/insert/@ref{insert}/g' -e 's/upsert/@ref{upsert}/g' -e 's/union/@ref{union}/g' -e 's/leftjoin/@ref{leftjoin}/g' -e 's/verb/@ref{Verb,verb}/' -e 's/adverb/@ref{Adverb,adverb}/g' -e '1,20 s/type/@ref{Noun,type}/g' -e 's/I\/O/@ref{I\/O}/g' -e 's/Table/@ref{Tables,Table}/g' -e 's/.z/@ref{.z}/g' -e 's/List/@ref{List}/g' -e 's/Func/@ref{User Functions,Func}/g' -e 's/Dict/@ref{Dictionary,Dict}/g' -e '20,100 s/t:/@ref{t}:/g' -e 's/utable/@ref{utable}/g' -e 's/xtable/@ref{xtable}/g' -e 's/amend/@ref{amend}/g' -e 's/dmend/@ref{dmend}/g' -e 's/if@ else/@ref{cond,if else}/g' -e '10,100 s/date/@ref{date}/g' -e '20,100 s/time/@ref{time}/g' k.d > k.d2

makeinfo k.manual.texi
texi2any --pdf k.manual.texi
texi2any --html k.manual.texi
texi2any --html --no-split k.manual.texi -o k9Simples.html
