# Google Spanner
Terraform to provision multi-region Google Spanner DB.

## Worth watching
- [Spanner 101](https://www.youtube.com/watch?v=Tzhe7sUNDbg)
- [Spanner 201](https://www.youtube.com/watch?v=IfsTINNCooY)

## Spanner setup notes
- Creating an instance of Spanner requires two configurations to be set that determine the 
location and amount of the instance's serving and storage resources:
  - The `instance configuration`: This is permanent for the life time of the instance
  - The `node count`: This can be changed after configuration

### Instance Configuration


### Node Count
- Number of Spanner servers in each of the instance's replicas is the same as the node count of 
the instance
- Increasing node count does not lead to an increase in replicas (which are fixed per configuration)
- Increasing node count increases the amount of resources each replica has

## Multi Region
At the time of writing, single continent in the US and across three continents is supported. [See 
here](https://cloud.google.com/spanner/docs/instances) for the latest.
- Increase in read speed across regions with a 












