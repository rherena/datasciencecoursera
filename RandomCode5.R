add2 <- function(x,y) { 
        x + y
}


above <- function(x,y = 10) {
  
        use <- x > y
        x[use]
  
}


colsmean <- function(y, removeNA = TRUE) {
          nc <- ncol(y)
          
          
          oauth_endpoints("github")
          myapp <- oauth_app("github", "your-20-digits", secret="your-very-long-hex-number")
          
          github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
          req <- GET("https://api.github.com/users/jtleek/repos", config(token = github_token))
          
          
          library(jsonlite)
          View(json2)
          
          
          means <- numeric(nc)
          for(i in 1:nc) {
                  means[i] <- mean(y[,i])
          }
          means
  
  
}