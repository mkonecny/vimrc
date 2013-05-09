#!/usr/bin/env python
from os.path import expanduser, exists
import sys

# TODO : turn this script into a full launcher of all of mine background utils

import json
import urllib2
from subprocess import Popen


# TODO
def instance_running(name):
    psef = ""
    possible_instances = [p for p in psef.splitlines() if name in p]
    return possible_instances > 1


def greet(data, cached_data):
    print("--> %s, %s\n" % (city, country_name))
    if cached_data:
        print("Using cached data")
    else:
        print("Using fresh data")


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

greet(data)

# lat:lon
args = "-l %s:%s" % (data[u'latitude'], data[u'longitude'])
cmd = "gtk-redshift"  # "redshift" for without the gui
full_cmd = "%s %s" % (cmd, args)

print("Running with '%s'" % full_cmd)

Popen(["xbacklight", "-set", "35"])
x = Popen([cmd, args])
