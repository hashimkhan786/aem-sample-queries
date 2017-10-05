# Predicates Used to Optimize and Filter results


Specify p.hits=full, in which case all properties will be included for each node:

http://localhost:4502/bin/querybuilder.json?p.hits=full&property=jcr%3atitle&property.value=Triangle

Use p.hits=selective and specify the properties you want to get in p.properties, separated by a space:

http://localhost:4502/bin/querybuilder.json?p.hits=selective&p.properties=sling%3aresourceType%20jcr%3aprimaryType&property=jcr%3atitle&property.value=Triangle


Another thing you can do is include child nodes in the QueryBuilder response. In order to do this you need to specify p.nodedepth=n, where n is the number of levels you want the query to return. Note that, in order for a child node to be returned, it must be specified by the properties selector (p.hits=full). Example:

http://localhost:4502/bin/querybuilder.json?p.hits=full&p.nodedepth=5&property=jcr%3atitle&property.value=Triangle



•	p.limit: Defines  the number of results to return for a given query. The default is 10 and -1 will return all results.
•	p.offset: a 0-based value that defines where the search results start. Changing this parameter is used to go to the “next” page of search results.
p.guessTotal: Using this parameter can significantly improve the performance of queries that return large result sets because Oak does not need to calculate the exact number of the result set. The disadvantage is that since 
