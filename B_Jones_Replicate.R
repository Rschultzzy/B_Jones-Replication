# Load required packages
library(httr)

# Set base URL and directory for saving files
base_url <- "https://www.govinfo.gov/content/pkg/GPO-PICTDIR-117/pdf/GPO-PICTDIR-117-10-"
dir_name <- "117th_congress_pdfs"

# Create directory if it doesn't exist
if(!dir.exists(dir_name)){
  dir.create(dir_name)
}

# Download PDF files for each state
for(i in 1:50){
  # Construct URL
  url <- paste0(base_url, i, ".pdf")
  
  # Set filename
  filename <- paste0(dir_name, "/", i, ".pdf")
  
  # Download file and save to directory
  GET(url, write_disk(filename))
}

https://medium.com/@B_radJ_ones/chatgpt-r-and-me-8c4301ecafa9