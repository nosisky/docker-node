# Node.js with MongoDB and Docker

Sample application showing how mongodb and docker can be run in Docker containers

### Starting the Application with Docker Compose

1. Install Docker for Windows or Docker for Mac (If you're on Windows 7 install Docker Toolbox: http://docker.com/toolbox).

2. Open a command prompt at the root of the application's folder.

3. Run `docker-compose build`

4. Run `docker-compose up`

5. Run `docker ps -a` and note the ID of the Node container

6. Run `docker exec -it <nodeContainerID> sh` (replace <nodeContainerID> with the proper ID) to sh into the container

7. Type `exit` to leave the sh session

8. Navigate to http://localhost:3000 (http://192.168.99.100:3000 if using Docker Toolbox) in your browser to view the site. This assumes that's the IP assigned to VirtualBox - change if needed.


## Author

### Abdulrasaq Nasirudeen (Dealwap)
