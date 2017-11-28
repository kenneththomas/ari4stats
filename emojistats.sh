#emoji stats

emojis=":pump: :lettalhm: :vom: 😬 :wow: :dam: :ai: :rie: :lavren: :eheu: :breez:"

for emoji in $emojis
do
emojisearch=`grep -c $emoji Daily/ari4.log`
echo $emoji $emojisearch
done
