#emoji stats

emojis=":pump: :lettalhm: :vom:"

for emoji in $emojis
do
emojisearch=`grep -c $emoji Daily/ari4.log`
echo $emoji $emojisearch
done
