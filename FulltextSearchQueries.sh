# Queries using various variations and use-cases of Fulltext Search in AEM.

#Fulltext search for term Management
type=cq:Page
path=/content/geometrixx
fulltext=Management
orderby=@jcr:score

#Fulltext search for pages without the term Management
type=cq:Page
path=/content/geometrixx
fulltext=-Management
orderby=@jcr:score
p.limit=-1

#Fulltext search for pages with terms starting with Manage*
type=cq:Page
path=/content/geometrixx
fulltext=Manage*
orderby=@jcr:score
p.limit=-1

#Fulltext search for Multiple paths and OR condition with term 'the'
type=cq:Page
fulltext=the
group.1_path=/content/geometrixx/en/products
group.2_path=/content/geometrixx/en/company
group.p.or=true
p.limit=-1
