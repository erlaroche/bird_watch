class ClipsController < ApplicationController

  #authentication for updating and deleting entries
  # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def show_all
    @clip = Clip.all
  end
  
  def show_mockingbird
    @mockingbird = {
      title: "Mockingbird",
      short: "Mockingbirds are a group of New World passerine birds from the Mimidae family.",
      description: "They are best known for the habit of some species mimicking the songs of other birds and the sounds of insects and amphibians, often loudly and in rapid succession. There are about 17 species in three genera. These do not appear to form a monophyletic lineage: Mimus and Nesomimus are quite closely related; their closest living relatives appear to be some thrashers, such as the Sage Thrasher. Melanotis is more distinct; it seems to represent a very ancient basal lineage of Mimidae."
    }
  end

  def show_tuftedtitmouse
    @tuftedtitmouse = {
      title: "Tufted Titmouse",
      short: "The Tufted Titmouse (Baeolophus bicolor) is a small songbird from North America, a species in the tit and chickadee family (Paridae). ",
      description1: "The Black-crested Titmouse, found from central and southern Texas southwards, was included as a subspecies but is now considered a separate species B. atricristatus.",
      description2: "These birds have grey upperparts and white underparts with a white face, a grey crest, a dark forehead and a short stout bill; they have rust-coloured flanks. The song is usually described as a whistled peter-peter-peter. They make a variety of different sounds, most having a similar tone quality.",
      description3: "The habitat is deciduous and mixed woods as well as gardens, parks and shrubland in the eastern United States; they barely range into southeastern Canada in the Great Lakes region. They are all-year residents in the area effectively circumscribed by the Great Plains, the Great Lakes, the Gulf of Mexico and the Atlantic Ocean. The range is expanding northwards, possibly due to increased availability of winter food at bird feeders. The birds are nowadays resident all year even in rural Ohio where there are few bird feeders, while it was noted around 1905 that many birds from these areas migrated south in winter."
    }
  end

  def show_bluejay
    @bluejay = {
      title: "Blue Jay",
      short: "The Blue Jay (Cyanocitta cristata) is a passerine bird in the family Corvidae, native to North America. ",
      description1: "It is resident through most of eastern and central United States and southern Canada, although western populations may be migratory. It breeds in both deciduous and coniferous forests, and is common near and in residential areas. It is predominately blue with a white chest and underparts, and a blue crest. It has a black, U-shaped collar around its neck and a black border behind the crest. Sexes are similar in size and plumage, and plumage does not vary throughout the year. Four subspecies of the Blue Jay are recognized.",
      description2: "The Blue Jay mainly feeds on nuts and seeds such as acorns, soft fruits, arthropods, and occasionally small vertebrates. It typically gleans food from trees, shrubs, and the ground, though it sometimes hawks insects from the air. It builds an open cup nest in the branches of a tree, which both sexes participate in constructing. The clutch can contain two to seven eggs, which are blueish or light brown with brown spots. Young are altricial, and are brooded by the female for 8–12 days after hatching. They may remain with their parents for one to two months.",
      description3: "The bird's name derives from its noisy, garrulous nature. It is sometimes called a 'jaybird' "
    }
  end

  #CRUD
  def new
    @clip = Clip.new
  end

  def index
    @clips = Clip.all
  end

  def show
    @clip = Clip.find(params[:id])
  end

  def edit
    @clip = Clip.find(params[:id])
  end

  def update
    @clip = Clip.find(params[:id])
   
    if @clip.update(params[:clip].permit(:title, :youtube_id, :text))
      redirect_to @clip
    else
      render 'edit'
    end
  end

  def destroy
    @clip = Clip.find(params[:id])
    @clip.destroy

    redirect_to clips_path
  end
   
  def create
    @clip = Clip.new(clip_params)
   
    if @clip.save
      redirect_to clips_path
    else
      # Could throw an error here
      render 'new'
    end
  end

  

  private
  def clip_params
    params.require(:clip).permit(:title, :youtube_id, :text)
  end
end