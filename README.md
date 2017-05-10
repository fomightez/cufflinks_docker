[![](https://images.microbadger.com/badges/version/fomightez/rnaseqcufflinks.svg)](https://microbadger.com/images/fomightez/rnaseqcufflinks "Get your own version badge on microbadger.com")[![](https://images.microbadger.com/badges/image/fomightez/rnaseqcufflinks.svg)](https://microbadger.com/images/fomightez/rnaseqcufflinks "Get your own image badge on microbadger.com")

# cufflinks_docker
Docker container for Cufflinks for Transcriptome assembly and differential expression analysis for RNA-Seq

[The Docker image is available](https://hub.docker.com/r/fomightez/rnaseqcufflinks/) at Docker Hub.

Contents
--------

A Linux-based Docker container with Cufflinks.


Includes:

* Ubuntu base
* Cufflinks

*Specific versions and sources are made clear in [the Dockerfile](https://github.com/fomightez/cufflinks_docker/blob/master/Dockerfile).*  

Use
----

Intended to be used with data in `/data` directory.

To pull and run first time. 

    docker run -v /data:/data -itd fomightez/rnaseqcufflinks

You may need to change first `/data` in that command to match path to your directory.

It starts detached and so you need to attach it; alternatively, use `docker run -v /data:/data -it fomightez/rnaseqcufflinks` to start and attach immediately.
