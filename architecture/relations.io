
Ref: users.location_id > locations.id 
Ref: travels.location_id > locations.id 
Ref: travels.id > users.travel_id 
Ref: users.id < posts.user_id 
Ref: likes.user_id > users.id
Ref: likes.post_id > posts.user_id 
Ref: comments.user_id > users.id 
Ref: comments.post_id > posts.id 
Ref: locations.id < posts.location_id 
Ref: interests.user_id <> users.id
Ref: auth_tokens.user_id - users.id
Ref: relations.follower > users.id
Ref: relations.following > users.id