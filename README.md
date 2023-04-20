# NCAR-Viz
Place for NCAR related opensource work around visualization requirements

## **Changes required for web hosting**
```
# Define panel endpoints

def panel_app():
    obj = Selections()
    pn.Row(obj.view,obj.param)
    return pn.Row(obj.view,obj.param).servable()

# Serve the panels as a webpage with the following command 
pn.serve({'panel': panel_app}, allow_websocket_origin=["127.0.0.1:5001"], port=5001)
```
## **mybinder.org for web visualization does not work**
## **Link remains for reference**
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/NicholasCote/NCAR-viz/HEAD)