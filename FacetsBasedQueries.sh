# Queries based on Facets implementation in AEM


# p.facets=true : This will be used to Search Facets based search for the assigned Query. If you want to calculate the count of tags which are present in your search result or you want to know how many templates for a particular page are there etc, you may go with Facets based search .
# http://localhost:4502/bin/querybuilder.json?1_property=jcr%3acontent%2fcq%3atags&2_property=jcr%3acontent%2fcq%3atemplate&2_property.value=%2fapps%2fgeometrixx%2ftemplates%2fcontentpage&orderby=jcr%3ascore&orderby.sort=desc&p.facets=true&type=cq%3aPage

type=cq:Page
1_property=jcr:content/cq:tags
2_property=jcr:content/cq:template
2_property.value=/apps/geometrixx/templates/contentpage
orderby=jcr:score
orderby.sort=desc
p.facets=true
