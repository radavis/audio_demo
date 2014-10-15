# Audio Demo

Mix some audio on Heroku. The file is stored in /tmp. This doesn't persist on Heroku, so it would need to be moved to an external host (eg- AWS).

## Heroku setup
`heroku config:add BUILDPACK_URL=https://github.com/ddollar/heroku-buildpack-multi.git`

[buildpack documentation](https://blog.heroku.com/archives/2012/7/17/buildpacks)
[live app](http://shrouded-meadow-8597.herokuapp.com/)
