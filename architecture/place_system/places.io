enum travel_type {
        planned
        completed
        in_progress
}

// master-slave(1 sync + async)
// replication factor 2
// sharding by location_id
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
