enum travel_type {
        planned
        completed
        in_progress
}

// master-slave(1 sync + async)
// replication factor 50
// sharding by userId
Table users {
  id integer [primary key]
  username varchar
  photos varchar[]
  location_id integer
  travel_id integer

}

// master-slave(1 sync + async)
// replication factor 2
// without sharding
Table locations {
   id integer [primary key]
   coordinates integer[]
   name varchar
}

// master-slave(1 sync + async)
// replication factor 2
// sharding by location_id
Table travels {
  id integer [primary key]
  location_id integer
  type travel_type
  from date
  to date
}

// master-slace(1 sync + async)
// replication factor 2
// sharding by post_id
Table comments {
  id integer [primary key]
  text varchar
  created_at timestamp
  user_id integer
  post_id integer
}

// master-slace(1 sync + async)
// replication factor 12
// sharding by post_id
Table likes {
  id integer [primary key]
  user_id integer
  post_id integer
}

// master-slace(1 sync + async)
// replication factor 3
// sharding by user_id
Table posts {
  id integer [primary key]
  user_id integer
  location_id integer
}

Ref: users.location_id > locations.id 
Ref: travels.location_id > locations.id 
Ref: travels.id > users.travel_id 
Ref: users.id < posts.user_id 
Ref: likes.user_id > users.id
Ref: likes.post_id > posts.user_id 
Ref: comments.user_id > users.id 
Ref: comments.post_id > posts.id 
Ref: locations.id < posts.location_id 