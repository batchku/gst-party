# Play video from default camera 
```
gst-launch-1.0 v4l2src ! xvimagesink
gst-launch-1.0 v4l2src device=/dev/video2 ! xvimagesink
```


# Play imags form exteranl Logitech C615 USB Web Cam
```
gst-launch-1.0 v4l2src device=/dev/video2 ! "image/jpeg,framerate=30/1,width=1920,height=1080" ! jpegparse ! jpegdec ! video/x-raw ! videoconvert ! "video/x-raw,width=1920,height=1080,format=BGRx,framerate=30/1" ! ximagesink sync=false
```


# Play 1080p at 5fps
```
gst-launch-1.0 v4l2src device=/dev/video2 ! "video/x-raw,format=YUY2,width=1920,height=1080,framerate=5/1" ! videoconvert ! xvimagesink
```


# Play video from camera through shader
```
gst-launch-1.0 v4l2src ! glupload ! glshader fragment="\"`cat livedraw.frag`\"" ! glimagesink
```


# Scale a video to 100 px width
```
gst-launch-1.0 v4l2src device=/dev/video2 ! "image/jpeg,framerate=30/1,width=1920,height=1080" ! jpegparse ! jpegdec ! video/x-raw ! videoconvert ! "video/x-raw,width=1920,height=1080,format=BGRx,framerate=30/1" ! videoscale  ! video/x-raw,width=100 ! ximagesink sync=false
```


# Video Device Control
[v4l2-ctl](https://www.mankier.com/1/v4l2-ctl)

```
v4l2-ctl -d /dev/video2 --set-ctrl=focus_auto=0
v4l2-ctl -d /dev/video2 --set-ctrl=focus_absolute=0
```
