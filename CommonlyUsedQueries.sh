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
