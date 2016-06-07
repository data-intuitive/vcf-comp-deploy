#!/bin/sh 
 
INSTALL_DIR="/root/tst" 
SN="spark-notebook-0.6.3-scala-2.10.5-spark-1.6.1-hadoop-2.6.0-with-hive-with-parquet.tgz" 
export NOTEBOOKS_DIR=VCF_Comp 
 
if [ -f $INSTALL_DIR/bin/spark-notebook ] ; then 
  echo "... Spark-Notebook is installed already..."  
else 
  echo "Spark-Notebook is not yet installed, installing now..." 
  if [ -f /tmp/$SN ] ; then 
    echo "... archive already exists under /tmp" 
  else 
    echo "... Downloading archive" 
    wget https://s3.eu-central-1.amazonaws.com/spark-notebook/tgz/$SN -P /tmp/ 
    echo "... Package downloaded" 
  fi 
  echo "... Untarring archive"  
  tar xzf /tmp/$SN --directory $INSTALL_DIR --strip-components=1 
fi 
  
cd $INSTALL_DIR 
echo "... Starting spark-notebook in the background..." 
nohup bin/spark-notebook -J-Xmx12g -Dhttp.port=80 & 

