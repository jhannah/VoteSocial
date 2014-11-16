VoteSocial
==========

Election data + social networking

What's on your upcoming ballot? Have you done your research? 
Share your thoughts and conclusions with your friends.
Who are your friends voting for? Why? Discuss!

Implementation 
--------------

Vote Social aims to be agnostic about data sources and social 
networks. Our high-level Models are generic, not bound to any specific
data source. We hope to remain a relevant technology platform
as election systems evolve, and as social networks wax and wane 
in popularity.

TODO - Integrations
-------------------

Election data:
* [Google Civic Data API](https://developers.google.com/civic-information/)

Social networks:
* Twitter
* FaceBook

Friends
-------

Other interesting election-oriented projects:
* https://www.votersnap.com/
* https://ballothero.com/

Run the server 
--------------

Developers can run script/votesocial_server.pl to test the application.

Launch the web app on Jay's linode:

   plackup -Ilib --listen 69.164.194.243:5000 --server Starman --daemonize votesocial.psgi
   ps -ef | grep starman   # 1 master, 5 workers

