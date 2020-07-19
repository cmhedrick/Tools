# Docker Templates
## Intro:
This section covers some basic cookie cutter templates for docker. In all of the examples I will be using Docker Compose. I choose this route because:
1. it's the method in which I became most familiar.
2. it provides the ability of running multi-container applications (which is very nifty for web development)

### "But why compose?":
Because it ***allows devlopers to run multi-container applications***. That is pretty significant in the matter of Web Application development where developers will be working with not only their Backend Framework of choice, but they could also have a Frontend framework. Then when in development, if they **hate** polluting thier local environment with useless **croft** such as packages, modules, database software, and whatever else! Docker Compose allows developers to run everything in *near* perfect harmony so that all the containers can talk to each other to some extent and give developers a pretty standard and uniform method of running the applications as they were intended on production.

