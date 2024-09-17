// master-slave(1 sync + async)
// replication factor 3
// without sharding
Table interests {
  id integer [primary key]
  user_id integer
  interests integer[]
}