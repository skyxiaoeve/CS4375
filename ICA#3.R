#' ---
#' title: "In-Class Assignment 2"
#' author: "Stephen Mercado, Xiao Luo"
#' date: "February 10th, 2020"
#' ---

st <- data.frame(StudentID = c(100, 101, 102, 103, 104, 105, 106, 107, 108, 109),
                 StudentName = c("Bonnie Gray", "Alyssa Robinson", "Phil Sandoval", "Lyle Ryan", "Manuel Hayes", 
                                 "Lucia Hunt", "Glenda Pearson", "Marilyn Lane", "Bob Richardson", "Jeremiah Douglas"),
                 Sex = c("F", "F", "M", "M", "M", "F", "F", "F", "M", "M"),
                 Grade1 = c(92, 94, 86, 74, 64, 98, 48, 75, 71, 91),
                 Grade2 = c(81, 89, 89, 68, 77, 87, 70, 77, 63, 90),
                 Grade3 = c(93, 87, 86, 71, 75, 92, 78, 75, 80, 95),
                 WeeklyStudyHours = c(14, 10, 5, 0, 4, 7, 0, 2, 3, 5))

st$GradeAverage <- rowMeans(st[c('Grade1', 'Grade2', 'Grade3')], na.rm=TRUE)

st


# 1- Find if there is any correlation between the GPA and the number of hours per week attributes in the student dataset. 
#    Draw a plot

cor(st$GradeAverage, st$WeeklyStudyHours)
plot(st$GradeAverage, st$WeeklyStudyHours)

#2   Extract the students who didnt get any grade less 85 and create a dataframe for them

st_over85 <- subset(st, st$Grade1 >= 85 & st$Grade2 >= 85 & st$Grade3 >= 85)
st_over85


# 3- Extract the students who got atleast one grade grater than 90  and create a dataframe for them

st_over90 <- subset(st, st$Grade1 >= 90 | st$Grade2 >= 90 | st$Grade3 >= 90)
st_over90

# 4- Display the name and student id of the female students 

st_fem <- subset(st, st$Sex == 'F')
st_fem
