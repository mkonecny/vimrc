#!/usr/bin/env python
from os.path import expanduser, exists
import sys

# TODO : turn this script into a full launcher of all of mine background utils
# set the default backlight as well (35)

import json
import urllib2
from subprocess import Popen


def write_settings(path, settings):
    with open(path, mode='w') as f:
        f.write(json.dumps(settings))
    print("Wrote settings to %s" % path)


def read_settings(path):
    if not exists(path):
        print("Cannot read settings from %s" % path)
        sys.exit(1)
    with open(path) as f:
        return(json.loads(f.read()))

url = 'http://freegeoip.net/json/'

settings_file = expanduser("~/.redshift_location")

data = None

try:
    response = urllib2.urlopen(url)
    data = json.loads(response.read())
    write_settings(settings_file, data)
except:
    data = read_settings(expanduser(settings_file))

# lat:lon
args = "-l %s:%s" % (data[u'latitude'], data[u'longitude'])
cmd = "gtk-redshift"  # "redshift" for without the gui
full_cmd = "%s %s" % (cmd, args)

print("Running with '%s'" % full_cmd)

Popen(["xbacklight", "-set", "35"])
Popen([cmd, args])
