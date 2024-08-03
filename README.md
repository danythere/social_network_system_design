# Social network for travelers - System Design

## Functional requirements:
* User registration and authorization.
* Publishing posts(location, description and photo - minimum set).
* One post can have several photos(max - 5).
* Evaluating and writing comments for posts.
* Subscribe to other users.
* Viewing a user's profile.
* View popular places with the ability to view posts for these locations.
* A shared feed consisting of subscription posts. Mixing recommendations will be a plus.
* Finding like-minded people to travel with will be a plus.

## Non-functional requirements:
* 10 000 000 DAU.
* CIS only.
* WEB, Android, iOS.
* 10 post views and likes per day from one user.
* 1 user can post up to three posts per day 
in the hot seasons(holidays/summer/etc).
* One comment per day from a user.
* 3 comment in one post.
* We keep the data forever.
* 10 million subscribers maximum.
* We believe that six months is a hot period, and the other six months is a normal one. In a normal period, the activity of users decreases by half.
* SLA 99,95%.

## Basic calculations:
* RPS creating posts = 10 000 000 * 3 / 86 400 ~ 350.
* RPS viewing posts = 10 000 000 * 10 / 86 400 ~ 1 160.
* RPS likes = 10 000 000 * 10 / 86 400 ~ 1 160.
* RPS comments = 10 000 000 * 1 / 86400 ~ 115.
* One post size = 300000(photo)*5 + 1000(description) + 100(location)= 1.5 MB.
* One user size = 50(username) + 3000(photo) + 100(location) = 3.1 KB.
* Traffic creating posts = 350 * one post size ~ 0.5 GB.
* Traffic viewing posts = 1 160 * (one post size  + 3*1000(comments)) ~ 1.7GB.
* Traffic comments = 115 * 1000 = 0.1 MB.
* Connections = 10 000 000 * 0.1 = 1 000 000.

The above calculations are for the hot season.

5 years(period of planning hardware):
* Posts counts = 10 000 000 * 3 posts * 365(days)* 1.5(year activity) * 5 = 82 125 000 000.
* Posts size = 82 125 000 000 * one post size ~ 123 петабайтов.
* Users count = 200 000 000(~CIS population).
* Users size = 200 000 000 * 3.1 = 0.6 GB.


