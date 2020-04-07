# Play default video source
gst-launch-1.0 autovideosrc device=/dev/video0 ! autovideosink

# Play imags form exteranl Logitech C615 USB Web Cam
gst-launch-1.0 v4l2src device=/dev/video2 ! "image/jpeg,framerate=30/1,width=1280,height=720" ! jpegparse ! jpegdec ! video/x-raw ! videoconvert ! "video/x-raw,width=1280,height=720,format=BGRx,framerate=30/1" ! ximagesink sync=false

# Play 1080p at 5fps
gst-launch-1.0 v4l2src device=/dev/video2 ! "video/x-raw,format=YUY2,width=1920,height=1080,framerate=5/1" ! videoconvert ! xvimagesink

# Play test source through fragment shader
gst-launch-1.0 videotestsrc ! glupload ! glshader fragment="\"`cat myshader.frag`\"" ! glimagesink
