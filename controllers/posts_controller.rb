class PostsController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
      register Sinatra::Reloader
  end

  $posts = [{
      id:0,
      title: "Justin Timberlake",
      body: "Justin Randall Timberlake (born January 31, 1981) is an American singer-songwriter, actor, and record producer.[1] Born and raised in Tennessee, he appeared on the television shows Star Search and The All-New Mickey Mouse Club as a child. In the late 1990s, Timberlake rose to prominence as one of the two lead vocalists and youngest member of NSYNC, which eventually became one of the best-selling boy bands of all time. Timberlake began to adopt a more mature image as an artist with the release of his debut solo album, the R&B-focused Justified (2002), which yielded the successful singles cry Me a River and Rock Your Body, and earned his first two Grammy Awards.",
      image: "justin.jpg"
  },
  {
      id: 1,
      title: "Ed Sheeran",
      body: "Edward Christopher Sheeran, MBE (born 17 February 1991) is an English singer, songwriter, guitarist, and record producer. Sheeran was born in Halifax, West Yorkshire, and raised in Framlingham, Suffolk. He attended the Academy of Contemporary Music in Guildford as an undergraduate from the age of 18 in 2009. In early 2011, Sheeran independently released the extended play, No. 5 Collaborations Project. After signing with Asylum Records, his debut album, + (read as plus), was released in September 2011. ",
      image: "ed.jpg"
  },
  {
    id: 3,
    title: "Drake",
    body: "Aubrey Drake Graham (born October 24, 1986)[3] is a Canadian rapper, singer, songwriter, record producer, actor, and entrepreneur.[4][5] Drake initially gained recognition as an actor on the teen drama television series Degrassi: The Next Generation in the early 2000s. Intent on pursuing a career as a rapper, he departed the series in 2007 following the release of his debut mixtape, Room for Improvement. He released two further independent projects, Comeback Season and So Far Gone, before signing to Lil Wayne's Young Money Entertainment in June 2009.[6]",
    image: "drake.jpg"
  }];


# Landing page
get '/' do

  @posts = $posts

  erb :'posts/index'

end

#Create onto index page
post '/' do


end

end
