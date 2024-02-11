numero <- 10
numero != 10

#install.packages()
#library()

flag <- TRUE
# média soma de todos elementos pela quantidade
# variancia = media subtrai eleva ao quadrado
# quartis = 1/4 25%, 2/4 50%, 3/4 75%, 4/4 100%
# teste de hipotse = 

vetor <- c(1, 10, 20, 30)
vetor[-3] #exclui a posição 3
vetor[3]

matriz <- matrix(1:9, nrow=3)#criação de matriz
matriz

vetor[1] #começa indice 1

lista <- list(c(10, 20, 30), 1, 2)#criação de lista
lista
lista[1] # saida (10, 20, 30)

lista[[1]][2]

lista2<- list(lista, 30, 20, c(10, 20, 30), matriz)
lista2

lista2[[5]][1,3]

vetor1 <- c(1, 10, 9, 1, 2)
vetor1[3:5]

head(mtcars)
mtcars[1]
rownames(mtcars)

#atividade de fixação

data("mtcars")
soma <- 0
n <- 0

#for(i in 1:32)
i <- 1
while(i <= 32){
  if (mtcars$cyl[i] == 8){
    soma <- soma + mtcars$hp[i]
    n <- n + 1
  }
  i <- i + 1
}










#medias de prisões por assalto, estupros e assasinatos das 
#5 maiores populaçoes

maior <- c(0, 0, 0, 0, 0) # vetor
maior[1] <- USArrests$UrbanPop[1]

#encontra a maior população
tamanho <- 50
for (i in 2:tamanho) {
  if(USArrests$UrbanPop[i] > maior[1]){
    maior[1] <- USArrests$UrbanPop[i]
  }
}

#Empates com a maior população
contador <- 1
for(i in 1:tamanho){
  if(USArrests$UrbanPop[i] == maior[contador]){
    maior[contador] <- maior[1]
    if(contador <= 5){
      contador <- contador + 1
    }
  }
}

if (contador <= 5){
  i <- 1
  flag <- TRUE
  while((i <= tamanho) & (flag == TRUE)){
    if(USArrests$UrbanPop[i] != maior[1]){
      flag <= FALSE
    }else{
      i <- i + 1
    }
  }
}

maior <- maior[1]

while (contador <= 5){
  maior[contador] <- USArrests$UrbanPop[i]
  for( indice in 1:tamanho){
    if((USArrests$UrbanPop[indice] > maior[contador]) 
       & (USArrests$UrbanPop[indice] < maior)){
      maior[contador] <- USArrests$UrbanPop[indice]
    }
  }
  
  contador2 <- contador
  for (indice in 1:tamanho){
    if(USArrests$UrbanPop[indice] == maior[contador]){
      maior[contador2] <- maior[contador]
      if (contador2 <= 5){
        contador2 <- contador2 + 1
      }
    }
  }
  
  if(contador2 <= 5){
    i <- 1
    flag <- TRUE
    while((i <= tamanho) & (flag == TRUE)){
      if(USArrests$UrbanPop[i] == maior[contador]){
        i <- i + 1
      }else{
        flag <- FALSE
      }
    }
  }
  maior <= maior[contador]
  contador <- conrtador2
  
}







