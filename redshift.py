#!/usr/bin/env python

import json
import urllib2
from subprocess import Popen

url = 'http://freegeoip.net/json/'

response = urllib2.urlopen(url)

data = json.loads(response.read())

# lat:lon
args = "-l %s:%s" % (data[u'latitude'], data[u'longitude'])
cmd = "gtk-redshift" # "redshift" for without the gui
full_cmd = "%s %s" % (cmd, args)

print("Running with '%s'" % full_cmd)

Popen([cmd, args])


