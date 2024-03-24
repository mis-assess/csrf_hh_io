# Copy files to github io

githubdir = "C:/GitHub/" # githubdir = "C:/Users/tcarruth/Documents/Github/"
frompath = paste0(githubdir,"csrf_hh_data")
topath = paste0(githubdir,"csrf_hh_io/docs/3369975a9851e6fd41a0ae6865456662040af596") # setwd(topath)
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
  for(j in 1:length(fromfiles))    file.copy(paste0(thisdir,fromfiles[j]), paste0(topath,"/OM_Fitting/",nams[i],"/",fromfiles[j]),overwrite=T)
  
  # MSE results
  file.copy(paste0(frompath,"/MSEs/Demo/Reports/",nams[i],"_Demo_MSE.html"),
            paste0(topath,"/MSEs/",nams[i],"_Demo_MSE.html"),overwrite=T)
  
  # Fitting reports
  thisdir = paste0(frompath,"/OMs/",nams[i],"/Reference_Case/Figures/",nams[i],"/")
  fromfiles = list.files(thisdir)
  fromfiles = fromfiles[!grepl("Area_Comparison",fromfiles)]
  for(j in 1:length(fromfiles)){
    file.copy(paste0(thisdir,fromfiles[j]), paste0(topath,"/OM_Descriptions/Figures/",nams[i],"/",fromfiles[j]),overwrite=T)
    
  }    
  
}

file.copy(paste0(frompath,"/Management Info/MPframework.pdf"),paste0(topath,"/References/MPframework.pdf"),overwrite=T)
file.copy(paste0(frompath,"/Project Info/Status Assumptions To do.xlsx"),paste0(topath,"/Project_Info/Status Assumptions To do.xlsx"),overwrite=T)
file.copy(paste0(frompath,"/Project Info/Progress.xlsx"),paste0(topath,"/Project_Info/Progress.xlsx"),overwrite=T)

paste0(frompath,"/Project Info/Progress.xlsx")

file.copy(paste0(frompath,"/info_geoduck/Geoduck_IFMP.pdf"),paste0(topath,"/References/Geoduck_IFMP.pdf"),overwrite=T)
file.copy(paste0(frompath,"/info_urchin/GSU_IFMP.pdf"),paste0(topath,"/References/GSU_IFMP.pdf"),overwrite=T)
file.copy(paste0(frompath,"/info_seacucumber/Sea_Cucumber_IFMP.pdf"),paste0(topath,"/References/Sea_Cucumber_IFMP.pdf"),overwrite=T)
file.copy(paste0(frompath,"/info_clam/Intertidal_Clams_IFMP.pdf"),paste0(topath,"/References/Intertidal_Clams_IFMP.pdf"),overwrite=T)




# Geoduck specific
file.copy(paste0(frompath,"/Project Info/2023_11_17_CSRF_Geoduck_Review.pdf"),paste0(topath,"/Project_Info/2023_11_17_CSRF_Geoduck_Review.pdf"),overwrite=T)

# Manilla clam specific
file.copy(paste0(frompath,"/Project Info/2023_11_20_CSRFManilaClam_Review.pdf"),paste0(topath,"/Project_Info/2023_11_20_CSRFManilaClam_Review.pdf"),overwrite=T)

# Sea Cucumber specific
file.copy(paste0(frompath,"/Project Info/Draft Summary of Sea Cucumber CSRF Meeting.pdf"),paste0(topath,"/Project_Info/Draft Summary of Sea Cucumber CSRF Meeting.pdf"),overwrite=T)

# Green urchin specific
file.copy(paste0(frompath,"/Project Info/Draft summary of Urching CSRF Meeting_Feb13, 2024_ Live Notes.pdf"),paste0(topath,"/Project_Info/Draft summary of Urching CSRF Meeting_Feb13, 2024_ Live Notes.pdf"),overwrite=T)



# General
file.copy(paste0(frompath,"/Project Info/Custom Analyses 2023-2024.pdf"),paste0(topath,"/Project_Info/Custom Analyses 2023-2024.pdf"),overwrite=T)


