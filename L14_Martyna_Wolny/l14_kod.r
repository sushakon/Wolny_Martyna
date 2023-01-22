library(magrittr)
library("GGally") 
library("ggplot2")
library(cluster)

## Zadanie 1
# Lista 
x <- 1:10
print(x)

# Pipes
d <- x %>%
 log2()%>%
 sin()%>%
 sum() %>%
 sqrt()
print(d)

# Dane o irysach
data("iris")

# Wyświetlenie
head(iris)

#Średnie
a <- iris %>%
aggregate(. ~ Species, .,mean)
print(a)

## Zadanie 2
h <- ggplot(data=iris, aes(x=Petal.Width))
h <- h + geom_histogram(aes(fill=Species,color=Species),bins=10)
h <- h + geom_vline(data=a,aes(xintercept=Petal.Width,color=Species),linetype='dashed')
h <- h + labs(x='Gatunki',y='Szerokość płatka',title='Histogramy szerokości płatków dla danych gatunków')
ggsave("Zad2_1.jpg", plot = h)

ah <- ggpairs(data=iris,aes(color=Species))
ggsave("Zad2_2.jpg", plot = ah)

## Zadanie 3

x <- iris[, 1:4]
y <- iris[, 5]

dane <- c()

for (i in 1:10)
{
  dane <- append(lista, kmeans(x, i)$tot.withinss)
}

ak <- ggplot(data.frame(iteration = 1:length(dane), value = dane), aes(x = iteration, y = dane))
ak <- ak + geom_line()
ggsave("Zad3_1.jpg", plot = ak)


ab <- ggplot(iris, aes(x = Petal.Width, y = Petal.Length, color= kmeans(x, 3)$cluster))
ab <- ab + geom_point()
ggsave("Zad3_2.jpg", plot = ab)

al <- ggplot(iris, aes(x = Petal.Width, y = Petal.Length, color = Species))
al <- al + geom_point()
ggsave("Zad3_2_porownanie.jpg", plot = al)