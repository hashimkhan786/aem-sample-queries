# Queries which are useful to check System Health

#Number of Workflows
#STALE
#http://localhost:4502/bin/querybuilder.json?p.limit=-1&path=%2fetc%2fworkflow%2finstances&property=status&property.value=STALE&type=cq%3aWorkflow
path=/etc/workflow/instances
type=cq:Workflow
property=status
property.value=STALE
p.limit=-1

#RUNNING
#http://localhost:4502/bin/querybuilder.json?p.limit=-1&path=%2fetc%2fworkflow%2finstances&property=status&property.value=RUNNING&type=cq%3aWorkflow
path=/etc/workflow/instances
type=cq:Workflow
property=status
property.value=RUNNING
p.limit=-1

#COMPLETED
#http://localhost:4502/bin/querybuilder.json?p.limit=-1&path=%2fetc%2fworkflow%2finstances&property=status&property.value=COMPLETED&type=cq%3aWorkflow
path=/etc/workflow/instances
type=cq:Workflow
property=status
property.value=COMPLETED
p.limit=-1

#Number of Audit Events between a date Range
#http://localhost:4502/bin/querybuilder.json?daterange.lowerBound=2017-07-28T15%3a43%3a08.279-04%3a00&daterange.property=cq%3atime&daterange.upperBound=2017-09-28T16%3a43%3a15.353-04%3a00&p.limit=-1&path=%2fvar%2faudit&type=cq%3aAuditEvent
path=/var/audit
type=cq:AuditEvent
daterange.property=cq:time
daterange.lowerBound=2017-07-28T15:43:08.279-04:00
daterange.upperBound=2017-09-28T16:43:15.353-04:00
p.limit=-1


#Number of Pages created between a date range
#http://localhost:4502/bin/querybuilder.json?1_property=cq%3atype&1_property.value=PageCreated&2_property=cq%3acategory&2_property.value=com%2fday%2fcq%2fwcm%2fcore%2fpage&daterange.lowerBound=2017-07-28T15%3a43%3a08.279-04%3a00&daterange.property=cq%3atime&daterange.upperBound=2017-09-28T16%3a43%3a15.353-04%3a00&p.limit=-1&path=%2fvar%2faudit%2fcom.day.cq.wcm.core.page&type=cq%3aAuditEvent
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
#http://localhost:4502/bin/querybuilder.json?1_property=cq%3atype&1_property.value=ASSET_CREATED&2_property=cq%3acategory&2_property.value=com%2fday%2fcq%2fdam&daterange.lowerBound=2017-07-28T15%3a43%3a08.279-04%3a00&daterange.property=cq%3atime&daterange.upperBound=2017-09-28T16%3a43%3a15.353-04%3a00&p.limit=-1&path=%2fvar%2faudit%2fcom.day.cq.replication&type=cq%3aAuditEvent
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
#http://localhost:4502/bin/querybuilder.json?1_property=cq%3atype&1_property.value=Activate&2_property=cq%3acategory&2_property.value=com%2fday%2fcq%2freplication&daterange.lowerBound=2017-07-28T15%3a43%3a08.279-04%3a00&daterange.property=cq%3atime&daterange.upperBound=2017-10-28T16%3a43%3a15.353-04%3a00&p.limit=-1&path=%2fvar%2faudit%2fcom.day.cq.replication&type=cq%3aAuditEvent
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
#http://localhost:4502/bin/querybuilder.json?1_property=cq%3atype&1_property.value=Delete&2_property=cq%3acategory&2_property.value=com%2fday%2fcq%2freplication&daterange.lowerBound=2017-07-28T15%3a43%3a08.279-04%3a00&daterange.property=cq%3atime&daterange.upperBound=2017-10-28T16%3a43%3a15.353-04%3a00&p.limit=-1&path=%2fvar%2faudit%2fcom.day.cq.replication&type=cq%3aAuditEvent
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
