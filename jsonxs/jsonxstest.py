import jsonxs

data = {'foo': 1}
jsonxs.jsonxs(data, 'bar', jsonxs.ACTION_SET, 2)
print data 
