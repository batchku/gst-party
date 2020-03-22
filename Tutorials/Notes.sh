# Play imags form exteranl Logitech C615 USB Web Cam
# Note: plays poorly; many packets dropped
gst-launch-1.0 v4l2src device=/dev/video2 ! "image/jpeg,framerate=30/1,width=1280,height=720" ! jpegparse ! jpegdec ! video/x-raw ! videoconvert ! "video/x-raw,width=1280,height=720,format=BGRx,framerate=30/1" ! ximagesink sync=false

# Play 1080p at 5fps
gst-launch-1.0 v4l2src device=/dev/video2 ! "video/x-raw,format=YUY2,width=1920,height=1080,framerate=5/1" ! videoconvert ! xvimagesink
