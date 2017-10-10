# Queries using various variations and use-cases of Fulltext Search in AEM.

#Fulltext search for term Management
#http://localhost:4502/bin/querybuilder.json?fulltext=Management&orderby=%40jcr%3ascore&path=%2fcontent%2fgeometrixx&type=cq%3aPage
type=cq:Page
path=/content/geometrixx
fulltext=Management
orderby=@jcr:score

#Fulltext search for pages without the term Management
#http://localhost:4502/bin/querybuilder.json?fulltext=-Management&orderby=%40jcr%3ascore&p.limit=-1&path=%2fcontent%2fgeometrixx&type=cq%3aPage
type=cq:Page
path=/content/geometrixx
fulltext=-Management
orderby=@jcr:score
p.limit=-1

#Fulltext search for pages with terms starting with Manage*
#http://localhost:4502/bin/querybuilder.json?fulltext=Manage*&orderby=%40jcr%3ascore&p.limit=-1&path=%2fcontent%2fgeometrixx&type=cq%3aPage
type=cq:Page
path=/content/geometrixx
fulltext=Manage*
orderby=@jcr:score
p.limit=-1

#Fulltext search for Multiple paths and OR condition with term 'the'
#http://localhost:4502/bin/querybuilder.json?fulltext=the&group.1_path=%2fcontent%2fgeometrixx%2fen%2fproducts&group.2_path=%2fcontent%2fgeometrixx%2fen%2fcompany&group.p.or=true&p.limit=-1&type=cq%3aPage
type=cq:Page
fulltext=the
group.1_path=/content/geometrixx/en/products
group.2_path=/content/geometrixx/en/company
group.p.or=true
p.limit=-1
