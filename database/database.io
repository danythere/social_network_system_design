enum travel_type {
        planned
        completed
        in_progress
}

Table users {
  id integer [primary key]
  username varchar
  photos varchar[]
  location_id integer
  travel_id integer

}

Table locations {
   id integer [primary key]
   coordinates integer[]
   name varchar
}

Table travels {
  id integer [primary key]
  location_id integer
  type travel_type
  from date
  to date
}

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

Ref: users.location_id > locations.id 
Ref: travels.location_id > locations.id 
Ref: travels.id > users.travel_id 
Ref: users.id < posts.user_id 
Ref: likes.user_id > users.id
Ref: likes.post_id > posts.user_id 
Ref: comments.user_id > users.id 
Ref: comments.post_id > posts.id 
Ref: locations.id < posts.location_id 