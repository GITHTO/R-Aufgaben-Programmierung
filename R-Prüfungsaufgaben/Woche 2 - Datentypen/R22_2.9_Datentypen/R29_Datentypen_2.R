codeoceanR::rt_score()
#codeoceanR::rt_submit()
# A4 ----
# Schreibe eine Funktion, die den Mittelwert der positiven Zahlen ausgibt.
# Für diese Aufgabe zählt 0 als positiv.
posMittel <- function(zahlen) {
  positive_zahl <- zahlen[zahlen >= 0]
  mean(positive_zahl)
}
posMittel(-3:5) # soll 2.5 sein


# A5 ----
# Schreibe eine Funktion, die das n-letzte Maximum ermittelt.
# Per default soll das normale Maximum berechnet werden.
# Hint: gib dem zweiten Argument einen Standardwert (erste Folie in 2.1 Funktionen).
# Hinweis: Falls du in 2.2 Logik A10 x[-which.max(x)] verwendest: hier hilft der Ansatz nicht.
# Aber wir haben ja schonmal Daten sortiert...
### Funktion if "sucht" n = 1 somit maximum von x | else sortiert in absteigender Reihenfolge WICHTIG!!! n um 1 reduzieren in R, da R bei 1 beginnt
nthMax <- function(x,n=1) {
if (n == 1) {
  return(max(x))
} 
  else{
x_sortiert <- sort(x, decreasing =  TRUE)
return(x_sortiert[n])
  }
}
nthMax(1:9)    # 9
nthMax(1:9, 2) # 8
nthMax(1:9, 3) # 7


# Mache weiter in "R29_Datentypen_3.R"
