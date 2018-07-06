eqs<-list()
eq<-function(name) {
  eqs[[name]]<<-length(eqs)+1 
  length(eqs)
}
eqref<-function(name) {
  paste0("(",eqs[[name]],")")
}

eq_save<-function(eqs,name) {
  fname<-paste0(".",name,"_equations.yaml")
  yaml::write_yaml(eqs,file=fname)
}

eq_load_ref<-function(name,ref) {
  fname<-paste0(".",name,"_equations.yaml")
  eqs<-yaml::yaml.load_file(fname)
  eqs[[ref]]
}

ref_tag<-function(ref) paste("REF.",eq_load_ref(ref_paper,ref))

knit_refs<-function() {
  library(knitr)
  knit_hooks$set(chunk = function(x, options) {
    if (length(grep("tab",options['label'],fixed=T)>0)  ) {
      z = capture.output(x)
      l = options['label']    
      x<-paste(trim.trailing(x),"\\label{",l,"}",sep='',collapse = "")
      x
    } else   if (!is.null(options$fig.cap)  ) {
      z = capture.output(x)
      l = options['label'] 
      x<-gsub("![",paste("![\\label{",l,"}",sep=""),x,fixed=T)
      x
    } else x
    
    
  })
}
