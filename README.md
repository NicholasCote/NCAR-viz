# NCAR-Vix
Place for NCAR related opensource work around visualization requirements

## **Changes required for web hosting**
```
# Import the flask module as Flask
from flask import Flask 

# Create the actual Flask web application
app = Flask(__name__)   

# Use the Flask decorator to create a web and panel endpoint
@app.route("/app") 
def hello(): 
    return 'Hello, World!'

def panel_app():
    obj = Selections()
    pn.Row(obj.view,obj.param)
    return pn.Row(obj.view,obj.param).servable()

# Serve the panel as a webpage with the following command 
pn.serve({'/flask': app, 'panel': panel_app}, allow_websocket_origin=["127.0.0.1:5001"], port=5001)
```
## **mybinder.org for web visualization does not work**
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/NicholasCote/NCAR-viz/HEAD)