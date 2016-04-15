netconvert  -n single.nod.xml -e single.edg.xml -o single.net.xml
duarouter -n single.net.xml -f single.flow.xml -o single.rou.xml --departlane "allowed"  --departspeed "random"
pause
sumo -n single.net.xml -r single.rou.xml --fcd-output single.fcd.xml --step-length 1