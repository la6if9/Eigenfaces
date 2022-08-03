load("faces.RData")
summary(faces[, 1:5])

par(mfrow=c(3,3))
for(i in sample(1:2410, size=9)){
  face <- matrix(rev(faces[,i]), nrow = 84, ncol = 96)
  image(face, col = gray(0:255 / 255 ))
}

faces_pca <- prcomp(faces)

par(mfrow=c(3, 3))
for(i in 1:9){
  face <- matrix(rev(faces_pca$x[, i]), nrow = 84, ncol = 96)
  image(face, col = gray(0:255 / 255 ))
}

par(mfrow=c(3, 3))
for(i in 2402:2410){
  face <- matrix(rev(faces_pca$x[, i]), nrow = 84, ncol = 96)
  image(face, col = gray(0:255 / 255 ))
}

par(mfrow=c(1, 2))
plot(faces_pca$x[, 1])
plot(faces_pca$x[, 2])
