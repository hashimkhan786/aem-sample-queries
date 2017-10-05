# General Queries

#Finding pages based on jcr:content properties where propery doesnt exist
path=/content/geometrixx
type=cq:Page
property=@jcr:content/jcr:title
property.operation=not


#Finding pages based on jcr:content properties where propery exists
path=/content/geometrixx
type=cq:Page
property=@jcr:content/jcr:title
property.operation=exists

#Finding pages based on jcr:content properties where propery value is mentioned
path=/content/geometrixx
type=cq:Page
property=@jcr:content/jcr:title
property.value=English

#Finding pages where property value is starting with English
path=/content/geometrixx
type=cq:Page
1_property=@jcr:content/jcr:title
1_property.value=English%
1_property.operation=like

#Finding empty properties : when properties exist and are blank.
/jcr:root/content/geometrixx//element(*, cq:Page) [jcr:content/@jcr:title = '' ]

#Find All Pages and order by cq:lastModified - Ascending Order
type=cq:Page
path=/content/geometrixx
orderby=@jcr:content/cq:lastModified
p.limit=-1

#Find All Pages and order by cq:lastModified - Descending Order
type=cq:Page
path=/content/geometrixx
orderby=@jcr:content/cq:lastModified
orderby.sort=desc
p.limit=-1


Multiple properties
1_property=jcr%3acontent%2fcq%3atemplate&1_property.value=%2fapps%2fgeometrixx%2ftemplates%2fhomepage&2_property=jcr%3acontent%2fjcr%3atitle&2_property.value=English&type=cq%3aPage


Multiple Values
http://localhost:4502/bin/querybuilder.json?property=jcr%3atitle&property.1_value=Products&property.2_value=Square&property.3_value=Events
