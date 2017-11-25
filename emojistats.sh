#emoji stats

emojis=":pump: :lettalhm: :vom: :grimacing:"

for emoji in $emojis
do
emojisearch=`grep -c $emoji Daily/ari4.log`
echo $emoji $emojisearch
done
