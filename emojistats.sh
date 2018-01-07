#emoji stats

emojis=":pump: :lettalhm: :vom: 😬 :wow: :dam: :ai: :rie: :lavren: :eheu: :breez:"

for emoji in $emojis
do
emojisearch=`grep -c $emoji tmp/consolidated.log`
echo $emoji $emojisearch
echo
done
