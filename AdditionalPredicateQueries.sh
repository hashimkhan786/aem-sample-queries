# Queries which utilize OOTB predicates provided in AEM


#tagid : Used to search for tags based on the TagIds
#http://localhost:4502/bin/querybuilder.json?tagid=marketing%3ainterest%2fproduct&tagid.property=jcr%3acontent%2fcq%3atags&type=cq%3aPage
type=cq:Page
tagid=marketing:interest/product
tagid.property=jcr:content/cq:tags

#dateComparison: show pages that have been modified since they were last published
#http://localhost:4502/bin/querybuilder.json?dateComparison.operation=greater&dateComparison.property1=cq%3alastModified&dateComparison.property2=cq%3alastReplicated&path=%2fcontent%2fgeometrixx&property=cq%3alastModifiedBy&property.value=admin
path=/content/geometrixx
property=cq:lastModifiedBy
property.value=admin
dateComparison.property1=cq:lastModified
dateComparison.property2=cq:lastReplicated
dateComparison.operation=greater

# date ranges: Searches for the date/time bound property search.
#http://localhost:4502/bin/querybuilder.json?daterange.lowerBound=2017-07-28T15%3a43%3a08.279-04%3a00&daterange.property=cq%3atime&daterange.upperBound=2017-09-28T16%3a43%3a15.353-04%3a00&p.limit=-1&path=%2fvar%2faudit&type=cq%3aAuditEvent
path=/var/audit
type=cq:AuditEvent
daterange.property=cq:time
daterange.lowerBound=2017-07-28T15:43:08.279-04:00
daterange.upperBound=2017-09-28T16:43:15.353-04:00
p.limit=-1

#nodename :node name pattern that allows wildcards: * = any or no char, ? = any char, [abc] = only chars in brackets
#http://localhost:4502/bin/querybuilder.json?nodename=image*&p.limit=-1&path=%2fcontent%2fgeometrixx&type=nt%3abase
type=nt:base
path=/content/geometrixx
nodename=image*
p.limit=-1

#hasPermission :comma (,) separated jcr permissions which will be AND to provide the final result. Will return true if and only if the current user session has given permissions on the path
#http://localhost:4502/bin/querybuilder.json?hasPermission=jcr%3aread%2cjcr%3awrite&p.limit=-1&path=%2fcontent%2fgeometrixx
hasPermission=jcr:read,jcr:write
path=/content/geometrixx
p.limit=-1

#relativedaterange :lowerBound and upperBound, but relative offsets to the current server time.
#http://localhost:4502/bin/querybuilder.json?p.limit=-1&path=%2fvar%2faudit&relativedaterange.lowerBound=-86400000&relativedaterange.property=cq%3atime&type=cq%3aAuditEvent
path=/var/audit
type=cq:AuditEvent
relativedaterange.property=cq:time
relativedaterange.lowerBound=-86400000
p.limit=-1

#http://localhost:4502/bin/querybuilder.json?p.limit=-1&path=%2fvar%2faudit&relativedaterange.property=cq%3atime&relativedaterange.upperBound=3600000&type=cq%3aAuditEvent
path=/var/audit
type=cq:AuditEvent
relativedaterange.property=cq:time
relativedaterange.upperBound=3600000
p.limit=-1


#rangeproperty : Search for the Properties which are LONG, DOUBLE and DATE with specified lowerBound & upperBound
#http://localhost:4502/bin/querybuilder.json?p.limit=-1&path=%2fcontent%2fgeometrixx&rangeproperty.lowerBound=10&rangeproperty.lowerOperation=%3E%3d&rangeproperty.property=count
path=/content/geometrixx
rangeproperty.property=count
rangeproperty.lowerBound=10
rangeproperty.lowerOperation=>=
p.limit=-1

#http://localhost:4502/bin/querybuilder.json?p.limit=-1&path=%2fcontent%2fgeometrixx&rangeproperty.property=count&rangeproperty.upperBound=100&rangeproperty.upperOperation=%3C%3d
path=/content/geometrixx
rangeproperty.property=count
rangeproperty.upperBound=100
rangeproperty.upperOperation=<=
p.limit=-1

#similar : does a similarity search using rep:similar().
#http://localhost:4502/bin/querybuilder.json?p.limit=-1&path=%2fcontent%2fgeometrixx&similar=%2fcontent%2fgeometrixx%2fen%2fproducts%2fjcr%3acontent%2fpar%2ftext
path=/content/geometrixx
similar=/content/geometrixx/en/products/jcr:content/par/text
p.limit=-1

#boolproperty :specialized for boolean properties. It only accepts the values "true" and "false" and in the case of "false" it will check for both the value "false" and a non-existent property at all.
#http://localhost:4502/bin/querybuilder.json?boolproperty=textIsRich&boolproperty.value=true&p.limit=-1&path=%2fcontent%2fgeometrixx
path=/content/geometrixx
boolproperty=textIsRich
boolproperty.value=true
p.limit=-1

#language : Used to search for pages with a language and corresponding facets. 
#http://localhost:4502/bin/querybuilder.json?language=en&p.facets=true&p.limit=-1&path=%2fcontent%2fgeometrixx&type=cq%3aPage
language=en
path=/content/geometrixx
type=cq:Page
p.facets=true
p.limit=-1

#memberOf : Search based on the sling/collection : recently_modifiedassets which accumulates results based on a collection query.
#http://localhost:4502/bin/querybuilder.json?memberOf=%2fcontent%2fdam%2fcollections%2fa%2fadmin%2frecently_modifiedassets&p.limit=-1&path=%2fcontent%2fdam%2fgeometrixx
p.limit=-1
memberOf=/content/dam/collections/a/admin/recently_modifiedassets
path=/content/dam/geometrixx
