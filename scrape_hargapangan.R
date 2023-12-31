message('Loading Package')
library(rvest)
library(tidyverse)
library(mongolite)
library(jsonlite)



message('Scrapping Data')
url <- "https://hargapangan.id/"
pricelist_province_id <- read_html(url) %>% html_element('pricelist_province_id')

nama_provinsi <- pricelist_province_id %>% html_elements('option') %>% html_text()

id_provinsi <- pricelist_province_id %>% html_elements('option') %>% html_attr('value') 

url1 <- "https://hargapangan.id/index.php?option=com_gtpihps&task=json.commodityPrices&price_type_id=1&_=1684563837426&province_id="
response <- fromJSON(url1)


ambil_data <- function(i){
  url2 <- "https://hargapangan.id/index.php?option=com_gtpihps&task=json.commodityPrices&price_type_id=1&_=1684563837426&province_id="
  url3 <- paste0(url2, i)
  response <- fromJSON(url2)
  response <- lapply(response$prices, unlist) %>% bind_rows()
  return(response)
}
ambil_data

harga_list <- sapply(id_provinsi[1:34], ambil_data, USE.NAMES = T, simplify = F)

harga_df <- harga_list %>% bind_rows(.id = "prov_id")
harga_df

harga_2 = harga_df[ , -2]
harga_2
harga_3= harga_2[ ,-2]
harga_3
harga_4=harga_3[ ,-6]
harga_4
colnames(harga_4)<-c("Prov_id","Jenis Pangan","Status","Harga","Denom","Kenaikan (%)")
harga_4
harga_5<-as.data.frame(harga_4)
harga_5


#MONGODB
message('Input Data to MongoDB Atlas')
atlas_connect <- mongo(
  collection = Sys.getenv("ATLAS_COLLECTION"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)


atlas_connect$insert(harga_5)
rm(atlas_connect)


