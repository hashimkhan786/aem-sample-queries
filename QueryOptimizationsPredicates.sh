# Predicates Used to Optimize and Filter results

#p.limit: It defines  the number of results ; Default is 10 and -1 will return all results.
fulltext=the
type=cq:Page
p.limit=-1

#p.hits=full: All properties will be included for each node.
fulltext=the
type=cq:Page
p.hits=full
p.limit=-1

#p.hits=selective : It specifies the properties you want to get in p.properties, separated by a space.
fulltext=the
type=cq:Page
p.hits=selective
p.properties=jcr:path jcr:primaryType
p.limit=-1

#p.nodedepth : This include the Child Nodes of the Search Results. p.nodedepth=n, where n is the number of levels you want the query to return. Note that, in order for a child node to be returned, it must be specified by the properties selector (p.hits=full).
fulltext=the
type=cq:Page
p.hits=full
p.nodedepth=2
p.limit=100

#p.guessTotal: Using this parameter can significantly improve the performance of queries that return large result sets because Oak does not need to calculate the exact number of the result set. The purpose of p.guessTotal parameter is to return the appropriate number of results that can be shown by combining the minimum viable p.offset and p.limit values.

fulltext=the
type=cq:Page
p.limit=-1
p.guessTotal=true

#p.offset=n : Sets the offset for the search results
fulltext=a
type=cq:Page
p.limit=-1
p.guessTotal=true
p.offset=10
