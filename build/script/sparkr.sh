#!/bin/bash
#
# -- Download and install Apache Spark R API (SparkR)

# ----------------------------------------------------------------------------------------------------------------------
# -- Variables ---------------------------------------------------------------------------------------------------------
# ----------------------------------------------------------------------------------------------------------------------

SPARK_VERSION="${1}"

# ----------------------------------------------------------------------------------------------------------------------
# -- Main --------------------------------------------------------------------------------------------------------------
# ----------------------------------------------------------------------------------------------------------------------

if [[ "${SPARK_VERSION}" =~ ^(2.1.2|2.3.0|2.4.1|2.4.2|2.4.3|2.4.4|2.4.5|2.4.6)$ ]]
then
  curl https://cran.r-project.org/src/contrib/Archive/SparkR/SparkR_${SPARK_VERSION}.tar.gz -k -o sparkr.tar.gz
  R CMD INSTALL sparkr.tar.gz
  rm -f sparkr.tar.gz
fi
