# Southwest-Florida-Non-Native-Lizard-Maxent-Models

This code is used to create a Maximum Entropy (Maxent) species distribution model (SDM) using presence only data from iNaturalist observations of four lizard species: green iguanas (Iguana iguana), brown anoles (Anolis sagrei), curly tail lizards (Leiocephalus carinatus), and African agamas (Agama agama) in southwest Florida. I created four SDM for each lizard species and summed the maps together to display non-native lizard hot spots in southwest Florida. This code is stictly intented to be a SDM example considering many assumptions and factors influencing presence have been purposefully ignored for ease of understanding.

iNaturalist data was downloaded from the Global Biodiversity Information Facility (GBIF) (https://doi.org/10.15468/dl.z73q6m).

The landcover map was acquired from Southwest Florida Water Management District and can be downloaded online at https://www.arcgis.com/home/item.html?id=bad341979b7b4eff856d5e173a57b955. I transformed this landcover map into a 15x15 meter raster in the UTM WGS 1984 Zone 17N projection. 

Citations for GBIF data:

Emery K, Brenskelle L, LeFebvre M (2020). UF Environmental Archaeology Tick Island Zooarchaeological Data. Version 1.12. University of Florida Environmental Archaeology. Occurrence dataset https://doi.org/10.15468/6mlap5 accessed via GBIF.org on 2022-12-10.
Pauwels O, Samyn Y, Vandenberghe T (2021). RBINS DaRWIN. Royal Belgian Institute of Natural Sciences. Occurrence dataset https://doi.org/10.15468/qxy4mc accessed via GBIF.org on 2022-12-10.
Demboski J (2022). DMNS Herp Collection (Arctos). Version 1.27. Denver Museum of Nature & Science. Occurrence dataset https://doi.org/10.15468/ku6aak accessed via GBIF.org on 2022-12-10.
Orrell T, Informatics Office (2022). NMNH Material Samples (USNM). Version 1.47. National Museum of Natural History, Smithsonian Institution. Occurrence dataset https://doi.org/10.15468/jb9tdf accessed via GBIF.org on 2022-12-10.
Frier D (2021). Royal Saskatchewan Museum - Herpetology Collection. Version 1.3. Royal Saskatchewan Museum. Occurrence dataset https://doi.org/10.5886/vu3jns accessed via GBIF.org on 2022-12-10.
Pauwels O, Vandenberghe T (2021). Royal Belgian Institute of Natural Sciences Reptile collection. Royal Belgian Institute of Natural Sciences. Occurrence dataset https://doi.org/10.15468/5y77yc accessed via GBIF.org on 2022-12-10.
Krejsa D (2022). Angelo State Natural History Collections (ASNHC) Amphibian and reptile specimens (Arctos). Version 1.36. Angelo State Natural History Collections (ASNHC). Occurrence dataset https://doi.org/10.15468/a8xeat accessed via GBIF.org on 2022-12-10.
Zhuang V (2022). UTEP Herpetology Osteology (Arctos). Version 10.36. University of Texas at El Paso Biodiversity Collections. Occurrence dataset https://doi.org/10.15468/ndrfxo accessed via GBIF.org on 2022-12-10.
Opitz C (2020). SUI Vertebrate Collection. Version 6.1. University of Iowa Museum of Natural History. Occurrence dataset https://doi.org/10.15468/xpsbyo accessed via GBIF.org on 2022-12-10.
MIllen B, Seymour K (2018). Palaeobiology - Vertebrate Fossils Collection - Non Mammalia - Royal Ontario Museum. Version 5.6. Royal Ontario Museum. Occurrence dataset https://doi.org/10.15468/anfvmi accessed via GBIF.org on 2022-12-10.
Emery K, Brenskelle L, LeFebvre M (2021). UF Environmental Archaeology North Midden Zooarchaeological Data. Version 1.15. University of Florida Environmental Archaeology. Occurrence dataset https://doi.org/10.15468/kzejyx accessed via GBIF.org on 2022-12-10.
Krohn A (2022). Kenneth S. Norris Center for Natural History, University of California, Santa Cruz (UCSC) Amphibian and reptile specimens (Arctos). Version 1.37. Kenneth S. Norris Center for Natural History. Occurrence dataset https://doi.org/10.15468/mdrwmx accessed via GBIF.org on 2022-12-10.
University of Alberta Museums, La France D, Becker-Burns A (2022). University of Alberta Museum of Zoology Amphibian and Reptile Collection (UAMZ). University of Alberta Museums. Occurrence dataset https://doi.org/10.18165/qmltit accessed via GBIF.org on 2022-12-10.
Schlüter D A (2015). SMNS Herpetologie. Staatliches Museum für Naturkunde Stuttgart. Occurrence dataset https://doi.org/10.15468/mi2dlu accessed via GBIF.org on 2022-12-10.
Staatliche Naturwissenschaftliche Sammlungen Bayerns. The Herpetology Collection at the Staatliches Museum für Naturkunde Stuttgart. Occurrence dataset https://doi.org/10.15468/g6ggjy accessed via GBIF.org on 2022-12-10.
University of Minnesota Bell Museum (2022). Bell Museum amphibians and reptiles. Occurrence dataset https://doi.org/10.15468/bjvdah accessed via GBIF.org on 2022-12-10.
Bucci M (2022). UAZ Herpetology Collection. University of Arizona Museum of Natural History. Occurrence dataset https://doi.org/10.15468/rqnb5a accessed via GBIF.org on 2022-12-10.
Braun J, King P (2022). Tissues Specimens. Sam Noble Oklahoma Museum of Natural History. Occurrence dataset https://doi.org/10.15468/5fmfwq accessed via GBIF.org on 2022-12-10.
Rickart E, Derieg K (2022). UMNH Reptiles and Amphibians Collection (Arctos). Version 2.66. Natural History Museum of Utah (UMNH). Occurrence dataset https://doi.org/10.15468/peenzw accessed via GBIF.org on 2022-12-10.
Scholes III, Ph.D. E (2015). Macaulay Library Audio and Video Collection. Cornell Lab of Ornithology. Occurrence dataset https://doi.org/10.15468/ckcdpy accessed via GBIF.org on 2022-12-10.
National Ecological Observatory Network (2022). NEON Biorepository Herptile Voucher Collection (Ground Beetle Sampling Bycatch Trap Sorting). Occurrence dataset https://doi.org/10.15468/zhkuay accessed via GBIF.org on 2022-12-10.
Nicholson K E (2019). MCNH Museum of Cultural and Natural History Reptile Collection. Version 1.14. Museum of Cultural and Natural History - Central Michigan University. Occurrence dataset https://doi.org/10.15468/gnifer accessed via GBIF.org on 2022-12-10.
Queensland Museum (2021). Queensland Museum provider for OZCAM. Occurrence dataset https://doi.org/10.15468/lotsye accessed via GBIF.org on 2022-12-10.
Millen B, Lathrop A (2018). Herpetology Collection - Royal Ontario Museum. Version 21.7. Royal Ontario Museum. Occurrence dataset https://doi.org/10.15468/mmh1bl accessed via GBIF.org on 2022-12-10.
Questagame (2022). Earth Guardians Weekly Feed. Occurrence dataset https://doi.org/10.15468/slqqt8 accessed via GBIF.org on 2022-12-10.
Sollows M, Jongsma G, McAlpine D (2017). NBMB Herps. New Brunswick Museum. Occurrence dataset https://doi.org/10.15468/vx22wo accessed via GBIF.org on 2022-12-10.
The International Barcode of Life Consortium (2022). International Barcode of Life project (iBOL). Occurrence dataset https://doi.org/10.15468/inygc6 accessed via GBIF.org on 2022-12-10.
Parker S (2017). LSUMZ Herps Collection. Louisiana State University Museum of Natural Science. Occurrence dataset https://doi.org/10.15468/iogakq accessed via GBIF.org on 2022-12-10.
Citizen Science Observation Dataset B, Tiago P (2020). Biodiversity4all Research-Grade Observations. BioDiversity4All. Occurrence dataset https://doi.org/10.15468/njmmp7 accessed via GBIF.org on 2022-12-10.
Pletcher J, Tabak L (2022). Ohio Wesleyan University Reptile Specimens (Arctos). Version 1.16. Ohio Wesleyan University Museum of Natural History. Occurrence dataset https://doi.org/10.15468/fr2wwy accessed via GBIF.org on 2022-12-10.
Neilson M (2022). USGS Nonindigenous Aquatic Species database. Version 1.264. United States Geological Survey. Occurrence dataset https://doi.org/10.15468/ijccz9 accessed via GBIF.org on 2022-12-10.
Piller K (2017). Southeastern Louisiana University Herpetology Collection. Southeastern Louisiana University Vertebrate Museum. Occurrence dataset https://doi.org/10.15468/2xdxei accessed via GBIF.org on 2022-12-10.
European Bioinformatics Institute (EMBL-EBI), GBIF Helpdesk (2022). INSDC Sequences. European Nucleotide Archive (EMBL-EBI). Occurrence dataset https://doi.org/10.15468/sbmztx accessed via GBIF.org on 2022-12-10.
Labedz T (2021). University of Nebraska State Museum Herpetology Collection. University of Nebraska State Museum. Occurrence dataset https://doi.org/10.15468/wnxczx accessed via GBIF.org on 2022-12-10.
Prestridge H (2021). Biodiversity Research and Teaching Collections - TCWC Vertebrates. Version 9.4. Texas A&M University Biodiversity Research and Teaching Collections. Occurrence dataset https://doi.org/10.15468/szomia accessed via GBIF.org on 2022-12-10.
Arizona State University Biocollections (2022). Arizona State University Herpetology Collection. Occurrence dataset https://doi.org/10.15468/yj2vvf accessed via GBIF.org on 2022-12-10.
Whiting A (2022). Brigham Young University (BYU) Herpetology Collection (Arctos). Brigham Young University Life Science Museum. Occurrence dataset https://doi.org/10.15468/tekwqq accessed via GBIF.org on 2022-12-10.
Leache A (2022). UWBM Herpetology Collection (Arctos). Version 31.71. University of Washington Burke Museum. Occurrence dataset https://doi.org/10.15468/419lza accessed via GBIF.org on 2022-12-10.
Laurencio D (2019). AUMNH Herpetology Voucher Collection. Version 1.4. Auburn University Museum. Occurrence dataset https://doi.org/10.15468/d1vglq accessed via GBIF.org on 2022-12-10.
naturgucker.de. naturgucker. Occurrence dataset https://doi.org/10.15468/uc1apo accessed via GBIF.org on 2022-12-10.
Johnson N (2018). Ohio State University Tetrapod Division - Reptile Collection (OSUM). Version 96.36. Museum of Biological Diversity, The Ohio State University. Occurrence dataset https://doi.org/10.15468/ps0mx5 accessed via GBIF.org on 2022-12-10.
Khidas K, Torgersen J (2022). Canadian Museum of Nature Amphibian and Reptile Collection. Version 1.125. Canadian Museum of Nature. Occurrence dataset https://doi.org/10.15468/hglsas accessed via GBIF.org on 2022-12-10.
Ramírez Bautista A, Comisión nacional para el conocimiento y uso de la biodiversidad C (2021). Distribución potencial de las especies de anfibios y reptiles en categoría de riesgo de México. Version 1.3. Comisión nacional para el conocimiento y uso de la biodiversidad. Occurrence dataset https://doi.org/10.15468/mdqurs accessed via GBIF.org on 2022-12-10.
Braker E (2022). UCM Amphibian and Reptile Collection (Arctos). University of Colorado Museum of Natural History. Occurrence dataset https://doi.org/10.15468/1llmgl accessed via GBIF.org on 2022-12-10.
de Vries H, Lemmens M (2022). Observation.org, Nature data from around the World. Observation.org. Occurrence dataset https://doi.org/10.15468/5nilie accessed via GBIF.org on 2022-12-10.
Siler C, King P (2022). Reptile Specimens. Version 106.287. Sam Noble Oklahoma Museum of Natural History. Occurrence dataset https://doi.org/10.15468/cplkwg accessed via GBIF.org on 2022-12-10.
Schmidt C (2016). FHSM Herps Collection. Fort Hays Sternberg Museum of Natural History. Occurrence dataset https://doi.org/10.15468/rgswnj accessed via GBIF.org on 2022-12-10.
Zhuang V (2022). UTEP Herpetology (Arctos). Version 1.44. University of Texas at El Paso Biodiversity Collections. Occurrence dataset https://doi.org/10.15468/pkbyxy accessed via GBIF.org on 2022-12-10.
Rice K, Cannister M (2016). USGS SESC - Biscayne - Herpetofauna - 2002-2003. Version 8.1. United States Geological Survey. Occurrence dataset https://doi.org/10.15468/5duujp accessed via GBIF.org on 2022-12-10.
Rice A, Cannister M (2016). USGS SESC - Everglades - Herpetofauna - 2005. Version 1.1. United States Geological Survey. Occurrence dataset https://doi.org/10.15468/wzlxpu accessed via GBIF.org on 2022-12-10.
McClennen M, Jenkins J, Uhen M (2017). Paleobiology Database. Paleobiology Database. Occurrence dataset https://doi.org/10.15468/jfqhiu accessed via GBIF.org on 2022-12-10.
Barrow L, Giermakowski T (2022). MSB Amphibian and Reptile Collection (Arctos). Version 1.64. Museum of Southwestern Biology. Occurrence dataset https://doi.org/10.15468/cbvtos accessed via GBIF.org on 2022-12-10.
Rice K, Cannister M (2016). USGS SESC - Big Cypress - Herpetofauna - 2002-2003. Version 3.1. United States Geological Survey. Occurrence dataset https://doi.org/10.15468/viwfur accessed via GBIF.org on 2022-12-10.
Spencer C (2022). MVZ Herp Collection (Arctos). Version 36.67. Museum of Vertebrate Zoology. Occurrence dataset https://doi.org/10.15468/pi1mts accessed via GBIF.org on 2022-12-10.
Rice K, Cannister M (2016). USGS SESC - Everglades - Herpetofauna - 2000-2002. Version 2.1. United States Geological Survey. Occurrence dataset https://doi.org/10.15468/sgpppi accessed via GBIF.org on 2022-12-10.
McBrayer L (2017). Georgia Southern University - Savannah Science Museum Herpetology Collection. Version 6.1. Georgia Southern University. Occurrence dataset https://doi.org/10.15468/nruxuc accessed via GBIF.org on 2022-12-10.
Dillman C (2018). CUMV Amphibian and Reptile Collection. Version 25.18. Cornell University Museum of Vertebrates. Occurrence dataset https://doi.org/10.15468/emivh3 accessed via GBIF.org on 2022-12-10.
Norton B, Stuart B (2022). NCSM Herpetology Collection. Version 26.15. North Carolina State Museum of Natural Sciences. Occurrence dataset https://doi.org/10.36102/dwc.3 accessed via GBIF.org on 2022-12-10.
Mertz W (2022). LACM Vertebrate Collection. Version 18.11. Natural History Museum of Los Angeles County. Occurrence dataset https://doi.org/10.15468/77rmwd accessed via GBIF.org on 2022-12-10.
Gall L (2022). Vertebrate Zoology Division - Herpetology, Yale Peabody Museum. Yale University Peabody Museum. Occurrence dataset https://doi.org/10.15468/ypdvp9 accessed via GBIF.org on 2022-12-10.
Rogers S (2017). CM Herps Collection. Version 8.5. Carnegie Museums. Occurrence dataset https://doi.org/10.15468/lxe6h4 accessed via GBIF.org on 2022-12-10.
Orrell T, Informatics Office (2022). NMNH Extant Specimen Records (USNM, US). Version 1.64. National Museum of Natural History, Smithsonian Institution. Occurrence dataset https://doi.org/10.15468/hnhrg3 accessed via GBIF.org on 2022-12-10.
Scheinberg L, Fong J (2022). CAS Herpetology (HERP). Version 33.65. California Academy of Sciences. Occurrence dataset https://doi.org/10.15468/bvoyqy accessed via GBIF.org on 2022-12-10.
UMMZ Reptiles & Amphibians Data Group, LSA IT A (2022). University of Michigan Museum of Zoology, Division of Reptiles & Amphibians. Version 7.49. University of Michigan Museum of Zoology. Occurrence dataset https://doi.org/10.15468/g3bard accessed via GBIF.org on 2022-12-10.
Harvard University M, Morris P J (2022). Museum of Comparative Zoology, Harvard University. Version 162.345. Museum of Comparative Zoology, Harvard University. Occurrence dataset https://doi.org/10.15468/p5rupv accessed via GBIF.org on 2022-12-10.
Hulbert R, FLMNH O (2022). University of Florida Vertebrate Paleontology. Version 1.91. Florida Museum of Natural History. Occurrence dataset https://doi.org/10.15468/nelacx accessed via GBIF.org on 2022-12-10.
Blackburn D, Brown W (2022). University of Florida Herpetology. Florida Museum of Natural History. Occurrence dataset https://doi.org/10.15468/vw3dvj accessed via GBIF.org on 2022-12-10.
iNaturalist contributors, iNaturalist (2022). iNaturalist Research-grade Observations. iNaturalist.org. Occurrence dataset https://doi.org/10.15468/ab3s5x accessed via GBIF.org on 2022-12-10.
