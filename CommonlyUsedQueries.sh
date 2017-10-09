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

#Find All Pages and order by cq:lastModified - Descending Order and Ignore Case
type=cq:Page
path=/content/geometrixx
orderby=@jcr:content/cq:lastModified
orderby.case=ignore
orderby.sort=desc
p.limit=-1


#Seach for Multiple properties with AND Condition
type=cq:Page
1_property=@jcr:content/cq:template
1_property.value=/apps/geometrixx/templates/contentpage
2_property=@jcr:content/hideInNav
2_property.value=true
p.limit=-1

#Seach for 1 property with multiple values
type=cq:PageContent
property=jcr:title
property.1_value=Products
property.2_value=Square
property.3_value=Events
p.limit=-1

# Finds the pages that have been modified since they were last published
path=/content/geometrixx
property=cq:lastModifiedBy
property.value=admin
dateComparison.property1=cq:lastModified
dateComparison.property2=cq:lastReplicated
dateComparison.operation=greater
