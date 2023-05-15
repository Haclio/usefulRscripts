#Petit script pour importer tous les fichiers texte d'un dossier et les placer dans une liste,
#puis les merger en ajoutant un suffixe correspondant au nom de la df à chaque nom de colonne
setwd("G:/Mon Drive/Work/Manip_dupli/CNV")

dataFiles <- lapply(Sys.glob("*covpergene.txt"), read.csv, sep = " ", header = FALSE, check.names = FALSE) #Importe tous les fichiers txt du dossier qui contiennent "covpergene"
names(dataFiles) <- str_sub(list.files(pattern = "*covpergene.txt"), 1, 1) #Nomme toutes les df de la liste par la lettre de la pop
dataFiles <- lapply(dataFiles, function(x) setNames(x, sub("^[^_]*.", "", names(x)))) #Enlève le préfixe de la pop dans les noms de colonne (je crois)

for (i in names(dataFiles)) { #Fonction qui va renommer les colonnes en fonction de la pop
  colnames(dataFiles[[i]]) <- c("GeneID","Chr", "Lenex", paste("CouvG", i, sep = ""), paste("CouvGnorm", i, sep = ""))
}

grandtableau  <- dataFiles |> #Merging des différentes df
  reduce(inner_join, by = c("GeneID", "Chr", "Lenex"))

write.xlsx(grandtableau, "allgenes.xlsx")
length(unique(grandtableau$GeneID))