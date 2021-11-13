GRAPH_WINDOW=2min

# Draw graph
rrdtool graph \
  graph.png \
  --start now-$GRAPH_WINDOW --end now \
  --width 850 --height 500 \
  --title "Data download bitrate" \
  --vertical-label "bit/sec" \
  DEF:tcpin=RRD/ip_bitrate_in.idx0.rrd:ip_bitrate_in:LAST \
  DEF:udpin=RRD/ip_bitrate_in.idx1.rrd:ip_bitrate_in:LAST \
  CDEF:total=tcpin,udpin,+ \
  AREA:total#0000ff:"TCP DL" \
  GPRINT:tcpin:AVERAGE:"Avg\: %3.2lf %sbps\t" \
  GPRINT:tcpin:MAX:"Max\: %3.2lf %sbps\t" \
  GPRINT:tcpin:MIN:"Min\: %3.2lf %sbps\l"\
  AREA:udpin#00ff00:"UDP DL" \
  GPRINT:udpin:AVERAGE:"Avg\: %3.2lf %sbps\t" \
  GPRINT:udpin:MAX:"Max\: %3.2lf %sbps\t" \
  GPRINT:udpin:MIN:"Min\: %3.2lf %sbps\l" \