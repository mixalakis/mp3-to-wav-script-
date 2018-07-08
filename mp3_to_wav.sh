for f in *.mp3; do
ffmpeg -i "$f" -acodec pcm_u8 -ar 22050 "${f:0:(length $stringZ -4) }.wav" ;
done 

for f in *.mp3; do
rm "$f";
done
