// master-slave(1 sync + async)
// replication factor 3
// without sharding
Table users {
  id integer [primary key]
  username varchar
  photos varchar[]
  location_id integer
  travel_id integer

}