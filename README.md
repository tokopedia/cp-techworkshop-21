# Workshop Cloud Automation

## Getting Started

> *We assume any required software already installed. Otherwise, please go back to this [doc](https://docs.google.com/document/d/1twtNLceEGys84LTpMIwVgNrSMPEqLTp0ieVh3hIzbzc/edit#)*

To ensure uniform participants’ local environment, we have provided a dev environment bundled as a Docker container image with pre-installed packages. There are two ways to use the dev environment:

1. Using VS Code devcontainer
1. Using plain container (docker run)

Beforehand, you need to clone this repository

```shell
git clone https://github.com/tokopedia/cp-techworkshop-21 $HOME/cp-techworkshop-21
cd $HOME/cp-techworkshop-21
```

And then follow one of these method bellow.

### Using VS Code devcontainer

- Start VS Code
- Run the `Remote-Containers: Open Folder in Container...` command and select the local folder of this project.

### Using plain container (docker run)

- Pull workspace container image

```
docker pull gcr.io/tkpd-stag-cloud-workshop-27c9/workspace:ubuntu
```

- Run the container with mount this project directory

```
docker run --rm -it -v $PWD:/workspace -w=/workspace gcr.io/tkpd-stag-cloud-workshop-27c9/workspace:ubuntu bash
```
