// master-slave(1 sync + async)
// replication factor 3
// smart sharding - celebrity and usual shard packs.
// if user has > 1000 subscribers => celebrity shard.
// inside the packs it is sharded by post id

Table comments {
  id integer [primary key]
  text varchar
  created_at timestamp
  user_id integer
  post_id integer
}

Table likes {
  id integer [primary key]
  user_id integer
  post_id integer
}

Table posts {
  id integer [primary key]
  user_id integer
  location_id integer
}