# .bashrc

export JAVA_OPTS="-Xmx512m"
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export QT_GRAPHICSSYSTEM=native

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

######################## SBT ##############################

export SBT_HOME=/home/rajjanwa/rbin

#######################HADOOP ##############################
export JAVA_HOME=/usr/java/jdk1.8.0_45
export SCALA_HOME=/usr/local/scala
export HADOOP_INSTALL=/usr/local/hadoop
export PATH=$PATH:$HADOOP_INSTALL/bin
export PATH=$PATH:$HADOOP_INSTALL/sbin
export HADOOP_MAPRED_HOME=$HADOOP_INSTALL
export HADOOP_COMMON_HOME=$HADOOP_INSTALL
export HADOOP_HDFS_HOME=$HADOOP_INSTALL
export YARN_HOME=$HADOOP_INSTALL
export HADOOP_CONF_DIR=$HADOOP_INSTALL/etc/hadoop
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_INSTALL/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_INSTALL/lib"
###################SPARK #####################################
export SPARK_HOME=/usr/local/spark
export SPARK_LOCAL_DIRS=/home/rajjanwa/spark_temp
export SPARK_WORKER_DIR=/home/rajjanwa/spark_temp
######################HIVE ###################################
export HIVE_HOME=/usr/local/hive
export DERBY_HOME=/usr/local/derby
export DERBY_INSTALL=/usr/local/derby
##################### KAFKA #################################
export KAFKA_HOME=/usr/local/kafka
###################ZOOKEEPER #################################
export ZOOKEEPER_HOME=/usr/local/zookeeper
#####################CASSANDRA ################################
export CASSANDRA_HOME=/usr/local/cassandra
###############################CLASSPATH ######################
export CLASSPATH=$CLASSPATH:/usr/local/Hadoop/lib/*:.
export CLASSPATH=$CLASSPATH:/usr/local/hive/lib/*:.
export CLASSPATH=$CLASSPATH:$DERBY_HOME/lib/derby.jar:$DERBY_HOME/lib/derbytools.jar
############################ PATH ENV ##########################
export PATH=$PATH:$JAVA_HOME/bin:$CASSANDRA_HOME/bin:$ZOOKEEPER_HOME/bin:$KAFKA_HOME/bin:$HADOOP_INSTALL/bin:$HADOOP_INSTALL/sbin:$HIVE_HOME/bin:$DERBY_HOME/bin:$SCALA_HOME/bin:$SPARK_HOME/bin:$SBT_HOME
#############################PATH ENV END #####################


# User specific aliases and functions
