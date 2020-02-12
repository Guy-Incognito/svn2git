# ora2pg Docker 

## Introduction


## How to build

```
docker build . -t svn2git

```

## How to run

## Usage:

The container accepts 2 mounted folders

* "/config" (read only) --> mount your folder containing the "authors.txt" file here
* "/data" --> mount the folder where all output should be written to here

Run the container with:

```
docker run  \
    --rm \
    -it \
    -v $CONFIG_DIRECTORY:/config \
    -v $DESTINATION_DIRECTORY:/data \
    svn2git
    svn2git $REPOSITORY_URL --username $USERNAME --authors config/authors.txt
```
