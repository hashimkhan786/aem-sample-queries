# Queries which are useful to check System Health

#Number of Workflows
#STALE
path=/etc/workflow/instances
type=cq:Workflow
property=status
property.value=STALE
p.limit=-1

#RUNNING
path=/etc/workflow/instances
type=cq:Workflow
property=status
property.value=RUNNING
p.limit=-1

#COMPLETED
path=/etc/workflow/instances
type=cq:Workflow
property=status
property.value=COMPLETED
p.limit=-1

#Number of Audit Events between a date Range
path=/var/audit
type=cq:AuditEvent
daterange.property=cq:time
daterange.lowerBound=2017-07-28T15:43:08.279-04:00
daterange.upperBound=2017-09-28T16:43:15.353-04:00
p.limit=-1


#Number of Pages created between a date range
path=/var/audit/com.day.cq.wcm.core.page
type=cq:AuditEvent
1_property=cq:type
1_property.value=PageCreated
2_property=cq:category
2_property.value=com/day/cq/wcm/core/page
daterange.property=cq:time
daterange.lowerBound=2017-07-28T15:43:08.279-04:00
daterange.upperBound=2017-09-28T16:43:15.353-04:00
p.limit=-1

#Number of Assets created between a date range
path=/var/audit/com.day.cq.replication
type=cq:AuditEvent
1_property=cq:type
1_property.value=ASSET_CREATED
2_property=cq:category
2_property.value=com/day/cq/dam
daterange.property=cq:time
daterange.lowerBound=2017-07-28T15:43:08.279-04:00
daterange.upperBound=2017-09-28T16:43:15.353-04:00
p.limit=-1

#Number of Replication events between a date range - Activations
path=/var/audit/com.day.cq.replication
type=cq:AuditEvent
1_property=cq:type
1_property.value=Activate
2_property=cq:category
2_property.value=com/day/cq/replication
daterange.property=cq:time
daterange.lowerBound=2017-07-28T15:43:08.279-04:00
daterange.upperBound=2017-10-28T16:43:15.353-04:00
p.limit=-1

#Number of Replication events between a date range - Deletions
path=/var/audit/com.day.cq.replication
type=cq:AuditEvent
1_property=cq:type
1_property.value=Delete
2_property=cq:category
2_property.value=com/day/cq/replication
daterange.property=cq:time
daterange.lowerBound=2017-07-28T15:43:08.279-04:00
daterange.upperBound=2017-10-28T16:43:15.353-04:00
p.limit=-1
