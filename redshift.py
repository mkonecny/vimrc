#!/usr/bin/env python
# TODO : turn this script into a full launcher of all of mine background utils
import sys
from os.path import expanduser, exists
import json
import urllib2
from subprocess import Popen


# TODO
def instance_running(name):
    # name is usually "/usr/bin/redshift"
    psef = "/usr/bin/redshift"
    possible_instances = [p for p in psef.splitlines() if name in p]
    return len(possible_instances) > 0


def greet(data, cached_data):
    print("--> %s, %s\n" % (data[u'city'], data[u'country_name']))
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
cached_data = False

print("Redshift launcher...")

if instance_running("/usr/bin/redshift"):
    print("Redshift instance is already running")
    sys.exit()

try:
    response = urllib2.urlopen(url)
    data = json.loads(response.read())
    write_settings(settings_file, data)
except:
    data = read_settings(expanduser(settings_file))
    cached_data = True

greet(data, cached_data)

# lat:lon
args = "-l %s:%s" % (data[u'latitude'], data[u'longitude'])
cmd = "gtk-redshift"  # "redshift" for without the gui
full_cmd = "%s %s" % (cmd, args)

print("Running with '%s'" % full_cmd)

Popen(["xbacklight", "-set", "35"])
x = Popen([cmd, args])
