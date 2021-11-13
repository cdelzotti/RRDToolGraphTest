# Create graph directory
tstat -r RRD -R rrd.conf -N net.conf -l &

while :
do
    sh draw.sh
    sleep 0.5
done
