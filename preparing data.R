#data preparing
drug_consumption <- read.csv("C:/Users/Ewa/Desktop/projekt ed/drug_consumption(1).data", header=FALSE)
nazwy_col <- read.table("C:/Users/Ewa/Desktop/projekt ed/nazwy_col.txt", quote="\"", comment.char="")
expl <- read.delim("C:/Users/Ewa/Desktop/projekt ed/expl.txt", header=FALSE)
colnames(drug_consumption) <- nazwy_col$V2
drug_consumption <- drug_consumption[,-1]
drug <- read.csv("C:/Users/Ewa/Desktop/projekt ed/drug.txt", sep="")
write.table(drug_consumption, 'C:/Users/Ewa/Desktop/projekt ed/drug.txt', append = FALSE, sep = " ", dec = ".",
            row.names = FALSE, col.names = TRUE)
