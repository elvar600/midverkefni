#Elvar Halldór Hróarr Sigurðsson
#10.09.18
#Verkefni M

from bottle import*
import urllib.request, json

with urllib.request.urlopen("http://apis.is/Petrol/") as url:
    data = json.loads(url.read().decode())

@route('/')
def index():
    return template("index.tpl",data = data)

@route('/company/<company>')
def index(company):
    return template('company',data=data,co=company)

@route('/moreinfo/<key>')
def index(key):
    return template('moreinfo',data=data,k=key)
#########################################################
@route("/static/<skra>")
def static_skra(skra):
    return static_file(skra, root="./static")

@error(404)
def villa(error):
    return "<h1 style = color:red>Þessi síða finnst ekki</h1>"

run(host="localhost", port=8080, debug=True)
