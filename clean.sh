#!/bin/bash
#Script to make distclean from buildroot
make -C buildroot BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} distclean

