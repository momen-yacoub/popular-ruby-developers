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
Details About the Endpoints:
ruby version: 2.6.4
rails version: 5.2.4

End Points Details:

Sessions

Create: Login
URL : /api/login
Method : POST
Request params:
{"email":"<email>","password":"<password>"}
Response:
{
    "id": 4,
    "email": "test1@gmail.com",
    "username": "test1",
    "role": "member",
    "authentication_token": "3c4b40046f94c02accc9c76383cbd67ac4e75121"
}
Destroy: Logout
URL : /api/logout/:authentication_token
Method : DELETE
Request params: - IN URL
Response:

