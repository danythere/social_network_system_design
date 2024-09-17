// master-slave(1 sync + async)
// replication factor 3
// without sharding
Table relations {
  id integer [primary key]
  follower integer
  following integer
}