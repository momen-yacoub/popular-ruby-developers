link for heroku [popular ruby developers](http://popular-ruby-developers.herokuapp.com/).

## Details About the project:

ruby version: 2.6.4 <br />
rails version: 5.2.4 <br />

to run test using [travise](https://github.com/MomenSaeed/popular-ruby-developers/runs/402455203) or bundle exec rspec <br />

## Details About the Endpoints:
### `TrendingDevelopers`

```
get: List
URL : /api/trending_developers/list
Method : GET
Request params: {}
Response:

[ 
  { 
    "name": "Mike Perham", 
    "username": "mperham", 
    "type": „user“,
    "avatar": "https://avatars0.githubusercontent.com/u/xxxx“,
    "repo": {
      "name": "repository name", 
      "description": "project description", 
      "url": "https://github.com/username/project"
    }
  },.. 
]

```
