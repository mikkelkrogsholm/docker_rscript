# Passing scripts to Docker

It can sometimes be useful to pass scripts to Docker. It could be that you have a container with all the needed dependencies and packages needed for your project, but you also want to be able to easily change some things in the scripts that are being executed.

By using an external script - that you can edit - that you pass to docker you can achieve this. 

And then you can have cron or Jenkins schedule how to do it.

## Example

Here follows a very basic example, but it works as a boilerplate for anything you want to do.


#### Clone this repo

First clone this repo so you have the files

```
git clone https://github.com/mikkelkrogsholm/docker_rscript
```

#### Run docker and pass script

Then run the docker command below.

```
docker run --rm -v $PWD/script.R:/script.R rocker/tidyverse:3.6.0 Rscript script.R
```

Lets break it down:

`docker run` starts the docker engine.   
`--rm` removes the container once it is done.   
`-v $PWD/script.R:/script.R` creates a shared file between the host and the container. In this case the script we want to run. $PWD means the current directory that the terminal is in.    
`rocker/tidyverse:3.6.0` is the docker image we want to use. If it does not exist it will be automatically downloaded.     
`Rscript script.R` is the command we pass to the container. Basically we tell it to execute the script.R file using Rscript.

#### Adjust to your project
You can adjust the docker image and the script to suit your needs. It is as simple as that.