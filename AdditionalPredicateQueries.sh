# Queries which utilize OOTB predicates provided in AEM



type=cq:Page&tagid=marketing:interest/product&tagid.property=jcr:content/cq:tags



# show pages that have been modified since they were last published
path=/content/geometrixx
property=cq:lastModifiedBy
property.value=reference-adjustment-service
dateComparison.property1=cq:lastModified
dateComparison.property2=cq:lastReplicated
dateComparison.operation=greater


# date ranges:
daterange.property=cq:lastReplicated
daterange.lowerBound=2013-01-01T00:00:00.000+01:00
daterange.lowerOperation=>=
