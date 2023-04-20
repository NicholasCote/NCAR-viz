# NCAR-Vix
Place for NCAR related opensource work around visualization requirements

## **Changes required for web hosting**
`
Imported the flask module as Flask
from flask import Flask 

app = Flask(__name__)   # Create the actual Flask web application

@app.route("/app") 
def hello(): 
    return 'Hello, World!'

def panel_app():
    obj = Selections()
    pn.Row(obj.view,obj.param)
    return pn.Row(obj.view,obj.param).servable()

pn.serve({'/flask': app, 'panel': panel_app}, allow_websocket_origin=["127.0.0.1:5001"], port=5001)
`
## **Binder for web visualization does not work as there is nothing to direct to the appropriate port**
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/NicholasCote/NCAR-viz/HEAD)