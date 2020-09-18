# Door Intercom


Concept:
--------

C 	     Audio		
L |<==================>| 
I |	     Video	       | D
E |<===================| O
N |	      I/O	         | O
T |<==================>| R

Technology: 
-----------
-I/O : MQTT
-Audio/Video : Jitsi?? WebRtc?? Aoirtc??

Implementation:
--------------
DoorSystem : 
  -Configuration
  -Audio/Video Server
  -MQTT Broker
  -MQTT Client

Client :
  -WebClient
  -MQTT Client 
  

Security:
---------


External Ressources:
--------------------
https://www.pyimagesearch.com/2019/09/02/opencv-stream-video-to-web-browser-html-page/
https://github.com/aiortc/aiortc
