library(devtools)
install_github("muschellij2/latexreadme")
library(latexreadme)
or<-
parse_latex(rmd,
            new_md,
            git_username = "muschellij2",
            git_reponame = "Github_Markdown_LaTeX")