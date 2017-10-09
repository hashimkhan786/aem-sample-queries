# Queries which utilize OOTB predicates provided in AEM


#tagid
type=cq:Page
tagid=marketing:interest/product
tagid.property=jcr:content/cq:tags

#dateComparison: show pages that have been modified since they were last published
path=/content/geometrixx
property=cq:lastModifiedBy
property.value=admin
dateComparison.property1=cq:lastModified
dateComparison.property2=cq:lastReplicated
dateComparison.operation=greater

# date ranges:
path=/var/audit
type=cq:AuditEvent
daterange.property=cq:time
daterange.lowerBound=2017-07-28T15:43:08.279-04:00
daterange.upperBound=2017-09-28T16:43:15.353-04:00
p.limit=-1

#nodename :node name pattern that allows wildcards: * = any or no char, ? = any char, [abc] = only chars in brackets
type=nt:base
path=/content/geometrixx
nodename=image*
p.limit=-1

#hasPermission :comma (,) separated jcr permissions which will be AND to provide the final result. Will return true if and only if the current user session has given permissions on the path
hasPermission=jcr:read,jcr:write
path=/content/geometrixx
p.limit=-1

#relativedaterange :lowerBound and upperBound, but relative offsets to the current server time.
path=/var/audit
type=cq:AuditEvent
relativedaterange.property=cq:time
relativedaterange.lowerBound=-86400000
p.limit=-1

path=/var/audit
type=cq:AuditEvent
relativedaterange.property=cq:time
relativedaterange.upperBound=3600000
p.limit=-1


#rangeproperty : Search for the Properties which are LONG, DOUBLE and DATE with specified lowerBound & upperBound
path=/content/geometrixx
rangeproperty.property=count
rangeproperty.lowerBound=10
rangeproperty.lowerOperation=>=
p.limit=-1

path=/content/geometrixx
rangeproperty.property=count
rangeproperty.upperBound=100
rangeproperty.upperOperation=<=
p.limit=-1

#similar : does a similarity search using rep:similar().
path=/content/geometrixx
similar=/content/geometrixx/en/products/jcr:content/par/text
p.limit=-1

#boolproperty :specialized for boolean properties. It only accepts the values "true" and "false" and in the case of "false" it will check for both the value "false" and a non-existent property at all.
path=/content/geometrixx
boolproperty=textIsRich
boolproperty.value=true
p.limit=-1

#language
language=en
path=/content/geometrixx
type=cq:Page
p.facets=true
p.limit=-1

#memberOf
p.limit=-1
memberOf=/content/dam/collections/a/admin/recently_modifiedassets
path=/content/dam

tagsearch
mainasset
savedquery
notexpired
tag
excludepaths
nocase
nodeExists
contentfragment
