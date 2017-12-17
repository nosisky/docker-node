# Node.js with MongoDB and Docker

Sample application showing how mongodb and docker can be run in Docker containers

### Starting the Application with Docker Compose

1. Install Docker for Windows or Docker for Mac (If you're on Windows 7 install Docker Toolbox: http://docker.com/toolbox).

2. Rename `.env.sample` to `.env` file in your root directory.

3. Open a command prompt at the root of the application's folder.

4. Run `docker-compose up`

6. Navigate to http://localhost:3000 (http://192.168.99.100:3000 if using Docker Toolbox) with any app to interact with the API. This assumes that's the IP assigned to VirtualBox - change if needed.

#### Environment variables
A few things to note about environment varibales.

ENV | Default | Note
--- | ------- | -----------------
`DB_URL` | mongodb://dockernode:password@mongo:27017/dockerNode | Database URL Where data will be stored and retrieved
`MONGODB_ADMIN_USERNAME` and `MONGODB_ADMIN_PASSWORD`| `root` and `root` respectively | Database authentication details
`MONGODB_APP_USERNAME` and `MONGODB_APP_PASSWORD`| `dockernode` and `root` respectively |  Used for setting the credentials for the application database |
`MONGODB_APP_DB` | dockerNode | Application Database name |

### API Documentation
The API only has one endpoint which is the `/users` endpoint for saving users to the database. The endpoint works with the HTTP verbs: `POST`, `GET`, `PUT`, `DELETE`.

###### POST HTTP Request
-   `POST` /users
-   INPUT:
```x-form-url-encoded
name: John Doe
email: john.doe@gmail.com
password: johndoe
```

###### HTTP Response

-   HTTP Status: `201: created`
-   JSON data
```json
{
  "_id": "59071791b0lkscm2325794",
  "name": "John Doe",
  "email": "john.doe@gmail.com",
  "password": "johndoe",
  "__v": 0
}
```

###### GET HTTP Response
-   `GET` /users

```json
[
    {
        "_id": "59071791b0lkscm2325794",
        "name": "John Doe",
        "email": "john.doe@gmail.com",
        "password": "johndoe",
        "__v": 0
    }
]
```

###### GET HTTP Response
-   `GET` /users/:id

```json
{
    "_id": "59071791b0lkscm2325794",
    "name": "John Doe",
    "email": "john.doe@gmail.com",
    "password": "johndoe",
    "__v": 0
}
```

###### DELETE HTTP Response
-   `DELETE` /users/:id

```json
User John Doe was deleted
```

###### POST HTTP Request
-   `PUT` /users/:id
-   INPUT:
```x-form-url-encoded
name: Jane Doe
email: jane.doe@gmail.com
password: janedoe
```

###### HTTP Response

-   HTTP Status: `200: OK`
-   JSON data
```json
{
  "_id": "59071791b0lkscm2325794",
  "name": "Jane Doe",
  "email": "jane.doe@gmail.com",
  "password": "janedoe",
  "__v": 0
}
```



### Author
**Olajide Bolaji 'Nuel** - Software Developer at Andela

### Docker implemented by
- [**Abdurasaq Nasirudeen**](http://twitter.com/dealwap)
