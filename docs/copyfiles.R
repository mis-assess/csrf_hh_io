# Copy files to github io

githubdir = "C:/Github/"
frompath = paste0(githubdir,"csrf_hh_data")
topath = paste0(githubdir,"csrf_hh_io/docs")
nams = c("Geoduck","Green_Urchin","Sea_Cucumber","Manila_Clam")


for(i in 1:length(nams)){
  
  # OM descriptions
  file.copy(paste0(frompath,"/OMs/",nams[i],"/Reference_Case/Ref_Case_",nams[i],"_Annotated.html"),
            paste0(topath,"/OM_Descriptions/Ref_Case_",nams[i],"_Annotated.html"),overwrite=T)
  
  # Area Comparisons
  file.copy(paste0(frompath,"/OMs/",nams[i],"/Reference_Case/Reports/",nams[i],"_Area_Comparison.html"),
            paste0(topath,"/Comparisons/",nams[i],"_Area_Comparison.html"),overwrite=T)
  
  # Fitting reports
  thisdir = paste0(frompath,"/OMs/",nams[i],"/Reference_Case/Reports/")
  fromfiles = list.files(thisdir)
  fromfiles = fromfiles[!grepl("Area_Comparison",fromfiles)]
  for(j in 1:length(fromfiles))    file.copy(paste0(thisdir,fromfiles[j]), paste0(topath,"/OM_Fitting/",nams[i],"/",fromfiles[j]))
  
  # MSE results
  file.copy(paste0(frompath,"/MSEs/Demo/Reports/",nams[i],"_Demo_MSE.html"),
            paste0(topath,"/MSEs/",nams[i],"_Demo_MSE.html"),overwrite=T)
  
  # Fitting reports
  thisdir = paste0(frompath,"/OMs/",nams[i],"/Reference_Case/Figures/",nams[i],"/")
  fromfiles = list.files(thisdir)
  fromfiles = fromfiles[!grepl("Area_Comparison",fromfiles)]
  for(j in 1:length(fromfiles)){
    file.copy(paste0(thisdir,fromfiles[j]), paste0(topath,"/OM_Descriptions/Figures/",nams[i],"/",fromfiles[j]))
    
  }    
  
}

file.copy(paste0(frompath,"/Management Info/MPframework.pdf"),paste0(topath,"/References/MPframework.pdf"),overwrite=T)