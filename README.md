# phytoshell
Phytoshell Docker image configuration for setting up computing environments for CyVerse and Open Science Grid
**[TODO: purpose of image, usage, summarize wrapper/runner, re-format with markdown language]**

## Summary
Docker image OS
  - Ubuntu 18.04 
  
Support for 5 languages:
  - Matlab Compiler Runtime (MCR) R2017b
  - Python 2.7/3.6.5 (from Anaconda3-5.2.0 [conda 4.5.11])
  - R 3.2.2
  - Octave 4.2.2
  - Julia 1.0.0
 
 iRODS Commands
 - iCommands version 4.1.9 <br />
    - Support for Ubuntu 14+ <br />
    - Versions 4.1.10-4.1.11 have bugs with mounting via irodsFs (4.2 not tested) <br />

## Installation
The docker container can be run either by cloning the GitHub repository and building the image 
directly from the Dockerfile, or by pulling the pre-built image from DockerHub. 

#### Downloading un-compiled docker image from GitHub <br />
Clone the repository and build the Docker image
```
git clone https://github.com/jbustamante35/phytoshell
docker build -t [name-of-image] /path/to/Dockerfile
```
User must build the image from the directory containing the Dockerfile and specify a name for 
the image (e.g. docker build -t spaldingshell /home/username/dockerimages/phytoshell)

#### Pulling pre-compiled docker image from DockerHub <br />
Pull repository from DockerHub <br />
```
docker pull jbustamante35/phytoshell:phytoshell
``` 

## Usage
### Running docker container from manually-compiled docker image

```
docker run -it [name-of-image] [verobisty] [codebase] [application_config (see Run Arguments)]
```

### Running docker container from pre-compiled docker image
```
docker pull jbustamante35/phytoshell:phytoshell
docker run -it phytoshell [verobisty] [codebase] [application_config (see Run Arguments)]
``` 

#### Running applications with interactive GUI
To run this container with applications that require an interactive GUI, change the run command to:
```
docker run --privileged -p 22:22 -it [name-of-image] [verobisty] [codebase] [application_config (see Usage)]
``` 
Then in a separate terminal, ssh into the running container with X11 port forwarding 
```
ssh -CX root@localhost
```

---                                                                                                 
**Alternatively, create a profile in ~/.ssh/config with the following settings**
                                                                                                    
**Host dok** <br />
&nbsp;&nbsp;&nbsp;&nbsp;  HostName localhost <br />
&nbsp;&nbsp;&nbsp;&nbsp;  Port 22 <br />
&nbsp;&nbsp;&nbsp;&nbsp;  User root <br />
&nbsp;&nbsp;&nbsp;&nbsp;  ForwardX11 yes <br />
&nbsp;&nbsp;&nbsp;&nbsp;  SendEnv LANG LC_\*  <br />
&nbsp;&nbsp;&nbsp;&nbsp;  HashKnownHosts yes <br />
&nbsp;&nbsp;&nbsp;&nbsp;  GSSAPIAuthentication yes <br />
                                                                                                    
---     
Then ssh into the running container
```
ssh -C dok
```

### Run Arguments
Running the container requires the following arguments [ explained in detail in runner script ]
**name-of-image**: name of docker image  <br />
    - if running a manually-built docker container, this is your docker image name. <br />
    - if running the pre-compiled docker image, the default image is phytoshell. <br />

**verbosity**: iRODS download verbosity level  <br />
    for downloading from iRODS [ 0 for none ; 1 for verbose ] <br />

**codebase**: <br /> 
    iRODS  <br />

**application_config**: <br />
    asdf  <br />

## Authors
**Nathan Miller**, Senior Scientist (<ndmill@gmail.com>) <br />
    University of Wisconsin - Madison <br />
    Department of Botany <br />
    
**Julian Bustamante**, Cellular and Molecular Biology Program (<jbustamante@wisc.edu>) <br />
    University of Wisconsin - Madison <br />
    Department of Botany <br />


## License
MIT license found in [LICENSE](./LICENSE) <br />


