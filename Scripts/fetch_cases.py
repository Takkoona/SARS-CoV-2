import os
import json
from urllib import request

url = "http://ncov.nosensor.com:8080/api/"
with request.urlopen(url) as f:
    res = f.read().decode("utf-8")
    cases = json.loads(res)

outdir = "Transmission"
if not os.path.exists(outdir):
    os.mkdir(outdir)

with open(os.path.join(outdir, "cases.json"), 'w') as f:
    json.dump(cases, f)
    