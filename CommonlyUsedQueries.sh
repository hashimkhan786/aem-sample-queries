# General Queries

#Finding pages based on jcr:content properties where propery doesnt exist
#http://localhost:4502/bin/querybuilder.json?path=%2fcontent%2fgeometrixx&property=%40jcr%3acontent%2fjcr%3atitle&property.operation=not&type=cq%3aPage
path=/content/geometrixx
type=cq:Page
property=@jcr:content/jcr:title
property.operation=not


#Finding pages based on jcr:content properties where propery exists
#http://localhost:4502/bin/querybuilder.json?path=%2fcontent%2fgeometrixx&property=%40jcr%3acontent%2fjcr%3atitle&property.operation=exists&type=cq%3aPage
path=/content/geometrixx
type=cq:Page
property=@jcr:content/jcr:title
property.operation=exists

#Finding pages based on jcr:content properties where propery value is mentioned
#http://localhost:4502/bin/querybuilder.json?path=%2fcontent%2fgeometrixx&property=%40jcr%3acontent%2fjcr%3atitle&property.value=English&type=cq%3aPage
path=/content/geometrixx
type=cq:Page
property=@jcr:content/jcr:title
property.value=English

#Finding pages where property value is starting with English
#http://localhost:4502/bin/querybuilder.json?1_property=%40jcr%3acontent%2fjcr%3atitle&1_property.operation=like&1_property.value=English%25&path=%2fcontent%2fgeometrixx&type=cq%3aPage
path=/content/geometrixx
type=cq:Page
1_property=@jcr:content/jcr:title
1_property.value=English%
1_property.operation=like

#Finding empty properties : when properties exist and are blank.
/jcr:root/content/geometrixx//element(*, cq:Page) [jcr:content/@jcr:title = '' ]

#Find All Pages and order by cq:lastModified - Ascending Order
#http://localhost:4502/bin/querybuilder.json?orderby=%40jcr%3acontent%2fcq%3alastModified&p.limit=-1&path=%2fcontent%2fgeometrixx&type=cq%3aPage
type=cq:Page
path=/content/geometrixx
orderby=@jcr:content/cq:lastModified
p.limit=-1

#Find All Pages and order by cq:lastModified - Descending Order
#http://localhost:4502/bin/querybuilder.json?orderby=%40jcr%3acontent%2fcq%3alastModified&orderby.sort=desc&p.limit=-1&path=%2fcontent%2fgeometrixx&type=cq%3aPage
type=cq:Page
path=/content/geometrixx
orderby=@jcr:content/cq:lastModified
orderby.sort=desc
p.limit=-1

#Find All Pages and order by cq:lastModified - Descending Order and Ignore Case
#http://localhost:4502/bin/querybuilder.json?orderby=%40jcr%3acontent%2fcq%3alastModified&orderby.case=ignore&orderby.sort=desc&p.limit=-1&path=%2fcontent%2fgeometrixx&type=cq%3aPage
type=cq:Page
path=/content/geometrixx
orderby=@jcr:content/cq:lastModified
orderby.case=ignore
orderby.sort=desc
p.limit=-1


#Seach for Multiple properties with AND Condition
#http://localhost:4502/bin/querybuilder.json?1_property=%40jcr%3acontent%2fcq%3atemplate&1_property.value=%2fapps%2fgeometrixx%2ftemplates%2fcontentpage&2_property=%40jcr%3acontent%2fhideInNav&2_property.value=true&p.limit=-1&type=cq%3aPage
type=cq:Page
1_property=@jcr:content/cq:template
1_property.value=/apps/geometrixx/templates/contentpage
2_property=@jcr:content/hideInNav
2_property.value=true
p.limit=-1

#Seach for 1 property with multiple values
#http://localhost:4502/bin/querybuilder.json?p.limit=-1&property=jcr%3atitle&property.1_value=Products&property.2_value=Square&property.3_value=Events&type=cq%3aPageContent
type=cq:PageContent
property=jcr:title
property.1_value=Products
property.2_value=Square
property.3_value=Events
p.limit=-1

# Finds the pages that have been modified since they were last published
#http://localhost:4502/bin/querybuilder.json?dateComparison.operation=greater&dateComparison.property1=cq%3alastModified&dateComparison.property2=cq%3alastReplicated&path=%2fcontent%2fgeometrixx&property=cq%3alastModifiedBy&property.value=admin
path=/content/geometrixx
property=cq:lastModifiedBy
property.value=admin
dateComparison.property1=cq:lastModified
dateComparison.property2=cq:lastReplicated
dateComparison.operation=greater
