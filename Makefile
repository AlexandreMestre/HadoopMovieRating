run:
	/usr/local/bin/hadoop com.sun.tools.javac.Main RatingFirst.java
	jar cf wc1.jar RatingFirst*.class
	/usr/local/bin/hdfs dfs -rm -r /user/alexandremestre/MovieTestFirstOutput
	/usr/local/bin/hdfs dfs -rm -r /user/alexandremestre/MovieTestFinalOutput
	/usr/local/bin/hadoop jar wc1.jar RatingFirst /user/alexandremestre/FinalInput /user/alexandremestre/MovieTestFirstOutput
	/usr/local/bin/hadoop com.sun.tools.javac.Main RatingSec.java
	jar cf wc2.jar RatingSec*.class
	/usr/local/bin/hadoop jar wc2.jar WordCountSec /user/alexandremestre/MovieTestFirstOutput /user/alexandremestre/MovieTestFinalOutput
