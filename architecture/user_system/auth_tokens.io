// master-slave(1 sync + async)
// replication factor 3
// without sharding
Table auth_tokens {
  id integer [primary key]
  user_id integer
  password_hash varchar
}
