# phytoshell
Phytoshell Docker image configuration for setting up computing environments for
CyVerse and Open Science Grid <br />

**[TODO: describe purpose of image, usage, summarize wrapper/runner, re-format
with markdown language]** <br />

### Summary
Docker image OS
  - Ubuntu 16.04 <br />
    - **NOTE**: the _Singularity_ container that this Docker image converts to
      when running on **OSG** currently supports up to 16.04 <br />

Support for 5 languages: <br />
  - Matlab Compiler Runtime (MCR) R2017b <br />
  - Python 2.7/3.6.5 (from Anaconda3-5.2.0 [conda 4.5.11]) <br />
  - R 3.2.2 <br />
  - Octave 4.2.2 <br />
  - Julia 1.0.0 <br />

 iRODS Commands <br />
 - 4.1.9 (supports Ubuntu 14+) <br />
    - **NOTE**: version 4.1.10 and 4.1.11 have bugs when mounting with _FUSE_
    - Future versions will be updated to 4.2._X_ <br />

### Installation
A)  Download un-compiled docker image from GitHub
  1) Clone this repository into desired folder <br />
    ```
    git clone https://github.com/jbustamante35/phytoshell
    ```
  2) Build docker image <br />
    ```
    docker build -t [name-for-image] /path/to/Dockerfile
    ```
  3) Run docker image <br />
    ```
    docker run -it [name-for-image] [verobisty] [codebase] [application-instructions (see Usage)]
    ```

B) Pull pre-compiled docker image from DockerHub
  1) Pull repository from DockerHub <br />
    ```
    docker pull jbustamante35/testphytoshell
    ```
  2) Run docker image <br />
    ```
    docker run -it [name-for-image] [verobisty] [codebase] [application-instructions (see Usage)]
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

**Julian Bustamante**, Cellular and Molecular Biology Program
    (<jbustamante@wisc.edu>) <br />
    University of Wisconsin - Madison <br />
    Department of Botany <br />


### License
MIT license found in [LICENSE](./LICENSE) <br />


