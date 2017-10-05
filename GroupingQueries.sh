# Usage of Groups to define complex Queries


#Search for Property with multiple values AND Property 2 with 1 value
#(Title is Products or Square or Events)AND Template is ContentPage
type=cq:PageContent
1_property=jcr:title
1_property.1_value=Products
1_property.2_value=Square
1_property.3_value=Events
2_property=cq:template
2_property.value=/apps/geometrixx/templates/contentpage
p.limit=-1

#Search for Property with multiple values OR Property 2 with 1 value
# { (Title is Products or Square or Events ) OR Template is ContentPage }
type=cq:PageContent
1_group.1_property=jcr:title
1_group.1_property.1_value=Products
1_group.1_property.2_value=Square
1_group.1_property.3_value=Events
1_group.2_property=cq:template
1_group.2_property.value=/apps/geometrixx/templates/contentpage
1_group.p.or=true
p.limit=-1

#Search for Group 1 with OR conditions in properties AND Group 2 with OR conditions in properties
# ({(Title is Products or Square or Events ) OR  (CQ:LastModifiedBy is Admin) } AND { Template is ContentPage or Homepage })
type=cq:PageContent

1_group.1_property=jcr:title
1_group.1_property.1_value=Products
1_group.1_property.2_value=Square
1_group.1_property.3_value=Events
1_group.2_property=cq:lastModifiedBy
1_group.2_property.value=admin
1_group.p.or=true   # if you remove this the condition between Group1 properties becomes an AND.

2_group.2_property=cq:template
2_group.2_property.1_value=/apps/geometrixx/templates/contentpage
2_group.2_property.2_value=/apps/geometrixx/templates/homepage
p.limit=-1



#Search for Group 1 with OR conditions in properties OR Group 2 with OR conditions in properties
# {  ({(Title is Products or Square or Events ) OR  (CQ:LastModifiedBy is Admin) } OR { Template is ContentPage or Homepage })  }
type=cq:PageContent

1_group.1_group.1_property=jcr:title
1_group.1_group.1_property.1_value=Products
1_group.1_group.1_property.2_value=Square
1_group.1_group.1_property.3_value=Events
1_group.1_group.2_property=cq:lastModifiedBy
1_group.1_group.2_property.value=admin
1_group.1_group.p.or=true
1_group.2_group.2_property=cq:template
1_group.2_group.2_property.1_value=/apps/geometrixx/templates/contentpage
1_group.2_group.2_property.2_value=/apps/geometrixx/templates/homepage
1_group.p.or=true

p.limit=-1
