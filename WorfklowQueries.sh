# Queries which are useful for Workflows Analysis in AEM .


#Workflows in COMPLETED STATE . Other Worfklow statuses like RUNNING, STALE, ABORTED  , SUSPENDED can also be used. 

path=/etc/workflow/instances
type=cq:Workflow
property=status
property.value=COMPLETED
p.limit=-1

#Particular Workflow (DAM Update Asset )in COMPLETED STATE

#Using Filter Predicate nodename - Not recommended as Filters work after the Query is executed.
path=/etc/workflow/instances
type=cq:Workflow
property=status
property.value=COMPLETED
nodename=update_asset*
p.limit=-1

OR

#Using Another Property and AND condition.
path=/etc/workflow/instances
type=cq:Workflow
1_property=status
1_property.value=COMPLETED
2_property=modelId
2_property.value=/etc/workflow/models/dam/update_asset/jcr:content/model
p.limit=-1


# Workflows between a particular Date Range
path=/etc/workflow/instances
type=cq:Workflow
1_property=status
1_property.value=COMPLETED
daterange.property=startTime
daterange.lowerBound=2017-09-28T15:43:08.279-04:00
daterange.upperBound=2017-09-28T16:43:15.353-04:00
p.limit=-1
