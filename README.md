Details About the project:
ruby version: 2.6.4
rails version: 5.2.4
link for herkou deployed: https://popular-ruby-developers.herokuapp.com/

Details About the Endpoints:


TrendingDevelopers

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

