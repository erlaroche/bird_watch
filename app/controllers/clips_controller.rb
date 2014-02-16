class ClipsController < ApplicationController
  def show_mockingbird
    @title = "Mockingbird"
    @short = "Mockingbirds are a group of New World passerine birds from the Mimidae family."
    @description = "They are best known for the habit of some species mimicking the songs of other birds and the sounds of insects and amphibians, often loudly and in rapid succession. There are about 17 species in three genera. These do not appear to form a monophyletic lineage: Mimus and Nesomimus are quite closely related; their closest living relatives appear to be some thrashers, such as the Sage Thrasher. Melanotis is more distinct; it seems to represent a very ancient basal lineage of Mimidae."
  end

  def show_tuftedtitmouse
    @title = "Tufted Titmouse"
    @short = "The Tufted Titmouse (Baeolophus bicolor) is a small songbird from North America, a species in the tit and chickadee family (Paridae). "
    @description1 = "The Black-crested Titmouse, found from central and southern Texas southwards, was included as a subspecies but is now considered a separate species B. atricristatus."
    @description2 = "These birds have grey upperparts and white underparts with a white face, a grey crest, a dark forehead and a short stout bill; they have rust-coloured flanks. The song is usually described as a whistled peter-peter-peter. They make a variety of different sounds, most having a similar tone quality."
    @description3 = "The habitat is deciduous and mixed woods as well as gardens, parks and shrubland in the eastern United States; they barely range into southeastern Canada in the Great Lakes region. They are all-year residents in the area effectively circumscribed by the Great Plains, the Great Lakes, the Gulf of Mexico and the Atlantic Ocean. The range is expanding northwards, possibly due to increased availability of winter food at bird feeders. The birds are nowadays resident all year even in rural Ohio where there are few bird feeders, while it was noted around 1905 that many birds from these areas migrated south in winter."

  end
end