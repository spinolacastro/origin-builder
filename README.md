# OpenShift RPM Builder Image
Build and update rpm to a s3 bucket

##Instalation:
You can either use our image from [dockerhub](https://hub.docker.com/r/getupcloud/origin-builder) or build at your local machine:

To use our image:
 ```
 $ docker pull getupcloud/origin-builder:latest
 ```

To build the image:

  ```
  $ git clone https://github.com/getupcloud/origin-builder.git
  $ cd origin-builder
  $ docker build -t origin-builder:latest .
  ```

##Requirements:
This image expects you have a AWS S3 bucket and security credentials, for more information about AWS S3 please see the official [documentation](http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html)


##Usage:

To build a given branch:

  ```
  $ docker run -d \
  -e AWS_ACCESS_KEY_ID=KEY \
  -e AWS_SECRET_ACCESS_KEY=KEY \
  -e BUCKET=mybucket \
  -e BRANCH=master \
  -e GITREPO=https://github.com/openshift/origin.git getupcloud/origin-builder

  ```

Just use the following yum.repo

  ```
  [origins3]
  name=origins3
  baseurl=http://<mybucket>.s3-website-<REGION>.amazonaws.com/pub/
  enabled=1
  gpgcheck=0 

  ```