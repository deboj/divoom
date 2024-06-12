# first argument LCD index
# second argument clock id
curl -X POST `jq -r .DeviceList[].DevicePrivateIP same_lan_device.json`/post -d "{\"Command\":\"Channel/SetClockSelectId\",\"ClockId\":$2,\"LcdIndex\":$1,\"LcdIndependence\":`jq .LcdIndependence device_channel_info.json`}"
