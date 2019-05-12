# Kramerius6-docker

Repository is currently inactive because there are major changes in Kramerius 6 ecosystem which are not implemented yet.

Testing repo for Kramerius 6 with fedora 4 repository.

## How to build

Create builder image: 

```
# cd s2i-kramerius
# docker build -t kramerius6-builder .
```
Download source-to-image (s2i) binary
[here](https://github.com/openshift/source-to-image/releases) and unzip it.

```
# /path/to/s2i build --ref=fcrepo4 --exclude="" https://github.com/ceskaexpedice/kramerius.git \ 
kramerius6-builder kramerius6
```
When build is done create in *kramerius6-docker* directory **kram6** and setup permissions.

For testing purpose 777.

```
# mkdir kram6
# chmod 777 kram6
```

External network `ud_bridge` must be defined. Use `docker network create ud_bridge` to create it.

#### Notes

---

` --exclude="" ` is necessary.

If you cannot start docker or have problems with permissions, make sure you have disabled your SELinux which may cause problems.

**Fedora users**: you don't have to download s2i, Fedora has in repository package source-to-image. ` dnf install source-to-image `
