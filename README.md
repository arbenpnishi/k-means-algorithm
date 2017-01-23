# **k-means-algorithm**
Goal: Classify data into clusters

## **Problem Description**

There exists an unclassified data set with hidden data structures in it. The task in this assignment is to perform comprehensive Cluster Analysis in order to reveal the structures and similar data groups. 
The data set consists of unlabeled data set called **test.txt** and initial centroids data set namely **centroids.txt** in the archive. Both files have the following format: *[attribute1_value <space> attribute2_value <space> ... <space> attribute90_value]*. 
The unlabeled data set includes **350** samples and the initial centroids set consists of **15** samples. Data instances in both files have **90** attributes.

## **Tasks:**

>  1. Implement a simple K-means method, which is able to handle real values data in attributes. Also you need to add functionality in your
> program that allows utilization of Euclidean, Manhattan (City Block),
> Euclidean Squared (the same as the Euclidean distance, but does not
> take the square root) and Chebyshev distances. You are free to use any
> kind of weights (for feature or data instance) in the program if
> necessary.
> 
>  2. Perform attributes values rescaling in order to obtain normalized data within the range [0,1], which is more suitable and reliable for
> proper cluster analysis. You can use following equation for rescaling:
> **xNew=(x-Min)/(Max-Min)**. Feel free to bring own rescaling method.
> 
>  3. Perform clustering of the unlabeled data set. You could use provided
>     initial centroids set or generate your own. Also there could be
>     considered next *stopping criteria*:
> 
>     3.1 Maximal number of iterations: 100
>     
>     3.2 Cluster are consistent (no changes in group matrix or centroids on current iteration, which mean that the clusters are
> balanced).

