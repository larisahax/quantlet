
# ---------------------------------
# Shakespeare's works
# ---------------------------------

setwd("/Users/larisa/Documents/R")

(obj.names = load("q_mat.RData", .GlobalEnv))

#-------------------------------
# RTextTools package for supervised text classification methods
#-------------------------------

library(RTextTools)

#evaluation for weighted model
container_tfnorm <- create_container(doc_tfnorm, clusters, trainSize=1:41, virgin=FALSE)

#Bagging 4-fold cross validation
BAGGING_tfnorm <- cross_validate(container_tfnorm, 4, "BAGGING")

#Random forest 4-fold cross validation
RF_tfnorm <- cross_validate(container_tfnorm, 4, "RF")

#evaluation for LSA_20 model
container_lsa_20 <- create_container(lsa_20, clusters, trainSize=1:41, virgin=FALSE)

#Bagging 4-fold cross validation
BAGGING_lsa_20 <- cross_validate(container_lsa_20, 4, "BAGGING")

#Random forest 4-fold cross validation
RF_lsa_20 <- cross_validate(container_lsa_20, 4, "RF")

#evaluation for LSA_30 model
container_lsa_30 <- create_container(lsa_30, clusters, trainSize=1:41, virgin=FALSE)

#Bagging 4-fold cross validation
BAGGING_lsa_30 <- cross_validate(container_lsa_30, 4, "BAGGING")

#Random forest 4-fold cross validation
RF_lsa_30 <- cross_validate(container_lsa_30, 4, "RF")









