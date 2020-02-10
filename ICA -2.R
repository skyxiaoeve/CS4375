#' ---
#' title: "In-Class Assignment 2"
#' author: "Stephen Mercado, Xiao Luo"
#' date: "February 10th, 2020"
#' ---


#1-create a data frame that has  7 attributes (Student ID, student name, grade1, grade2, grade3, sex, and study.hours.per.week) 

st <- data.frame(StudentID = c(100, 101, 102, 103, 104, 105, 106, 107, 108, 109),
                 StudentName = c("Bonnie Gray", "Alyssa Robinson", "Phil Sandoval", "Lyle Ryan", "Manuel Hayes", 
                 "Lucia Hunt", "Glenda Pearson", "Marilyn Lane", "Bob Richardson", "Jeremiah Douglas"),
                 Sex = c("F", "F", "M", "M", "M", "F", "F", "F", "M", "M"),
                 Grade1 = c(92, 94, 86, 74, 64, 98, 48, 75, 71, 91),
                 Grade2 = c(81, 89, 89, 68, 77, 87, 70, 77, 63, 90),
                 Grade3 = c(93, 87, 86, 71, 75, 92, 78, 75, 80, 95),
                 WeeklyStudyHours = c(14, 10, 5, 0, 4, 7, 0, 2, 3, 5))

#2- Add GPA  to the data frame and calculate GPA for the students based on grade1, grade2, and grade3



st$GradeAverage <- rowMeans(st[c('Grade1', 'Grade2', 'Grade3')], na.rm=TRUE)

st

#3- create a discretized data frame using equal interval by discretizing grade1, grade2, and grade3 to 
#    three categories (bad, good, very good) and draw three plots to show the distribution of the grades
#4-draw a plot to show the distribution of a continuous attribute in the original dataset
#5-draw a plot to show the distribution between a continuous attribute  and a discrete attribute in the original dataset