#!/usr/bin/env python
import fileinput
import urllib
import urllib2

payload = (
    ('data', "\n".join(fileinput.input())),
    ('format', 'text'),
    ('keyword_case', 'upper'),
    ('reindent', True),
    ('n_indents', 2),
    )

response = urllib2.urlopen('http://sqlformat.appspot.com/format/',
                           urllib.urlencode(payload))
print response.read()
