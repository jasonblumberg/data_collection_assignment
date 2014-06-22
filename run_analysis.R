activity_labels <- read.table("activity_labels.txt", quote="\"")

features <- read.table("features.txt", quote="\"")

subject_test <- read.table("subject_test.txt", quote="\"")

X_test <- read.table("X_test.txt", quote="\"")

y_test <- read.table("y_test.txt", quote="\"")

subject_train <- read.table("subject_train.txt", quote="\"")

X_train <- read.table("X_train.txt", quote="\"")

y_train <- read.table("y_train.txt", quote="\"")

keep = grep("mean|std()", features$V2)

test = X_test

train = X_train

colnames(test) <- features$V2

colnames(train) <- features$V2


test = test[keep]

train = train[keep]



colnames(y_test) <- "labels"

colnames(y_train) <- "labels"

test = cbind(test, y_test)

train = cbind(train, y_train)

test$test.train.flag = "test"

train$test.train.flag = "train"

colnames(activity_labels) <- c("labels", "activity")

test = merge(test, activity_labels, by.x = "labels", by.y = "labels")

train = merge(train, activity_labels, by.x = "labels", by.y = "labels")

final_data = rbind(test, train)

write.table(final_data, "final_data.txt")
