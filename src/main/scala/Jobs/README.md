# README SCALA
This is the README file for the Scala project files imported from the previous project.
Only 2 major configurations need to be made before you automatically build the fat jar Spark
will use for the Spark-submit job. 

1. Within ExtractGitHubData.scala, the value commitsDf must be changed to reflect the url of the new HDFS namenode. 

2. Within DBConnection.scala, the value host must be changed to reflect the url of the new CockroachDB service. 

After the above 2 changes have been made, you would run ```sbt assembly``` within the Insight18 directory (in the same 
directory as the build.sbt file) and the fat jar file with all the needed dependencies will be created in the directory
shown during the command's execution. Although it is tempting to change the project's file structure, it is highly not 
recommended to do so due to the nature of how the sbt build tool looks for files. 

For installing sbt, there should be plenty of online guides on how to do so for AWS. 
