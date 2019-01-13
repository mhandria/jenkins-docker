# Jenkins Docker

This repository is served more for a reminder than an open source project.  
The importance of CI is crucial in development that is why I've taken the time to make this repository for those who would like to have a modular approach for docker within their personal/enterprise server.  
  
*NOTE: This approach follows a "Docker in Docker" concept that might not be the best approach at the time of reading because this repository is not heavily maintained*

### Pulling The Repository
The first and formost thing you must do is pull this repository by running the following command 

```
$ git clone https://github.com/mhandria/jenkins-docker.git
```
Then move to the directory 
```
$ cd ./jenkins-docker
```

### Build The Image
You can build the image yourself through `docker build`, however, I've added a script "**build.sh**" that will run for you already.  This will tag the image with `latest`, change the script as you please. 

```
$ ./build.sh
```

### Set Up Volumes And Jenkins
This part can be a bit tricky.  Essentially, you want to make a volume and that will save all your Jenkins' data even after you "minor" upgrade Jenkins or if anything does happens to your jenkins container.  Then you want to set up your Jenkins' image.  I've made a script called `initial-setup.sh` so that you won't have to go through all the pain of googling through a bunch of StackOverflows.

```
$ ./initial-setup.sh
```

### Re-Run Jenkins | Run Jenkins 
The `run.sh` will just help your remember the run script needed to run the Jenkins' container.  

```
$ ./run.sh
```

##### MENTIONS
mvp goes to this [link](https://getintodevops.com/blog/the-simple-way-to-run-docker-in-docker-for-ci).  
This is exactly how I figured out how to run Jenkins in a docker container that can connect to your host's docker daemon. 