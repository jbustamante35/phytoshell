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
 - 4.1.11 (supports Ubuntu 14+)

## Installation
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
    
## Authors
**Nathan Miller**, Senior Scientist (<ndmill@gmail.com>) <br />
    University of Wisconsin - Madison <br />
    Department of Botany <br />
    
**Julian Bustamante**, Cellular and Molecular Biology Program (<jbustamante@wisc.edu>) <br />
    University of Wisconsin - Madison <br />
    Department of Botany <br />


## License
MIT license found in [LICENSE](./LICENSE) <br />


