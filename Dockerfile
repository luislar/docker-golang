# Dockerfile provides minimal tooling and source dependency management for
# any Go projects at Vungle.
#
# Tag: vungle/golang[:<go-semver>]; e.g. vungle/golang:1.5, vungle/golang:1.5.2.
FROM golang:1.12.4

# OUTDIR specifies a directory in which projects can create output files so that
# these output files can be consumed by other processes. Downstream projects can
# choose to mount OUTDIR to a volume directly or create a directory and perform
# `docker cp ...` later.
ENV OUTDIR /out

##########################
# Testing and Tooling
#
# NOTE: For testing and tooling binaries that are actually built with Go, we
# want to only retain its binaries to avoid unexpected source dependencies bleed
# into the project source code.
##########################
# None so far

##########################
# Dependency Management
##########################
# Install Dep.
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh

##########################
# Testing scripts
##########################
# None so far

##########################
# Code Analysis scripts
##########################
# None so far
