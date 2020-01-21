link for heroku [popular ruby developers](http://popular-ruby-developers.herokuapp.com/).

## Details About the project:

ruby version: 2.6.4 <br />
rails version: 5.2.4 <br />

## Details About the Endpoints:
### `TrendingDevelopers`


get: List <br />
URL : /api/trending_developers/list <br />
Method : GET <br />
Request params: {} <br />
Response: <br />
<p>
[ <br />
  { <br />
    "name": "Mike Perham", <br />
    "username": "mperham", <br />
    "type": „user“,
    "avatar": "https://avatars0.githubusercontent.com/u/xxxx“, <br />
    "repo": { <br />
      "name": "repository name", <br />
      "description": "project description", <br />
      "url": "https://github.com/username/project" <br />
    } <br />
  },.. <br />
] <br />

</p>
