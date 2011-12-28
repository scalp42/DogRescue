# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#First create the user
leo = {
  email: "teo.leonard@gmail.com",
  password: "test",
  first_name: "Leonard",
  last_name: "Teo"
}
User.create(leo)

#Create the dogs
dogs = [{
  name: "Bamboo a Male Shepherd X Sheltie",
  breed: "Shepherd X Sheltie",
  description: "Bamboo, another familiar face to Animatch, was adopted in September 2010 when he was approximately 6 months old.  Bamboo is a medium size dog (38 lbs. but could lose a pound or two)  and he is a Shepherd x Sheltie mix.  Bamboo was given up because his family felt that they could no longer cope with his separation anxiety.",
  status: "available",
  image: "bamboo-11165.jpeg"
}, {
  name: "A Pomeraniean Male named Jappy",
  breed: "Pomeranian",
  description: "Jappy is a Pomeranian, approximately 4 years old, who came to Animatch via the pound—another unclaimed treasure!  True to his name, he loves to hear himself talk, so apartment condo living would not be for him.  Despite his small stature, Jappy is very active and will need plenty of exercise.  Keeping him busy with walks, runs, games, and toys will be good for his body and his mind.  Dogs who bark for attention are often bored.  Although he tips the scale at 8 lbs., he would still make a great walking or hiking partner.  Jappy will need frequent brushing to keep his coat free of matts.  Since we have no history on him, an adult home or one where children are older would be ideal.  If you are looking for a little guy with a big personality, Jappy might just be the dog for you.  Please fill in the Adoption Form if you would like to adopt Jappy.",
  status: "available",
  image: "jappy-11177.jpeg"
}, {
  name: "A Labrador Retriever-X Female named Beulah",
  breed: "Labrador Cross",
  description: "Hey, Beulah here and I�ve got a bone to pick with my previous family.  How could they just leave me to fend for myself; where did they think I�d go?  It�s not like they gave me a map or a bus ticket!  Well, I�m just going to put one paw in front of the other and move on with my life.  Yup, I�m going to adopt a family.  I�m looking for a family that I can take for lots of walks and I do mean that I will be taking the lead.  If being dragged around at the end of the leash doesn�t seem like much fun, then let�s do obedience together.  You can never be too smart and I�m sure that you will catch on quickly; don`t worry I will be patient.  The fact that I learn quickly and will want to please you will definitely be an asset.  I�d really appreciate a family that will buy me lots of toys; I do have a passion for tennis balls.  I would especially like a human who has a good arm and can throw that ball really far; not to worry, I�ll bring it back to you!  Labs never say no to food but I need a human who will help me loose the extra pound or two that slows me down when I am retrieving my ball.  A good balanced meal is what I need; maybe a carrot or two as a treat!  Although I love humans of any size, it would probably be best if children were older.  I tend to be over enthusiastic and might knock little ones over.  If my family can give me an energetic canine sister or brother, that would be appreciated.  If not, you won�t be disappointed in having me as your �only girl�.  In a nutshell, I`m looking for a soft bed, lots of exercise, lots of toys, good food, and good friends � four legged and two-legged.  If you think that you can give me the life I deserve, then fill in the Adoption Form.  I may just pick you!",
  status: "available",
  image: "beulah-11231.jpeg"
}, {
  name: "A Lab x Sheltie Female named Reilly",
  breed: "Lab X Sheltie",
  description: "Reilly is an Animatch Adoptee for the second time in her life.  This Lab x Sheltie, who is 5 years old, has separation anxiety.  She is presently on medication and we hope that the medication, combined with behaviour modification, will get Reilly back on the right track.  Reilly is a wonderful, affectionate dog who is well worth the effort.  More info to follow on Reilly .....",
  status: "available",
  image: "reilly-11220.jpeg"
}, {
  name: "A Chihuahua-X Female named Mojo",
  breed: "Chihuahua Cross",
  description: "If Mojo could talk, when she first meets a new human, she would say “Go slow.  I need a little time”.  Mojo was taken in by a family who found her on the street.  They were unable to keep her in their apartment so they brought her to a safe place.  Some dogs, like Mojo, have a harder time with being abandoned and have some trust issues.  Mojo is a sensitive and worried little girl who just needs to feel secure before accepting cuddles and belly rubs.  When she feels threatened, she can nip so she needs an adult home or one where children are older.  By going slowly and being patient, Mojo happily accepts love and attention.  She wants to put her days as a stray behind her and she’d be the happiest girl in the world to be someone’s beloved pet.  Mojo is young and healthy and can learn to trust people again.  If you would like to give a deserving dog a second chance, Mojo would love to be your new best friend!  Please fill in the adoption form if you think that she is the dog for you.",
  status: "available",
  image: "mojo-11237.jpeg"
}, {
  name: "A Lab-x Female named Kella",
  breed: "Lab Cross",
  description: "Kella is another dog who hails from the North.  Thousands of dogs live a life of lonely, starved, hardship across Northern Canada.  The abundance of unsterilized dogs roaming the land is producing an uncontrollable amount of puppies in a region that has limited access to vet care. The answer lies in spaying and neutering all dogs.  Reducing the number of unwanted puppies, and the number of puppies who will grow up to reproduce again, is the only answer.  We thank the Animal Rescue Corps for doing what they could to accomplish this.",
  status: "available",
  image: "kella-11247.jpeg"
}, {
  name: "A Lab-X Female named Simone",
  breed: "Lab Cross",
  description: "“Me, me, me!  Pick me!”  That would be what Simone would say if she could express herself.  Whatever her life was like in the Northern Community from which she came, she is none the worse for wear.  Like many of the Northern Dogs, she has a “joie de vivre”.  Simone looks like a Lab mix, but a short Lab.  She definitely acts like a Lab, all the time. This means she’s all excitement, all energy and all loving, if you’re game.  As with most of her buddies from the North, she LOVES balls and will retrieve for as long as her human is willing to throw the ball.  In fact, she is discovering that all toys are fun and will stockpile them in her crate.  Her first walks on leash confirmed that all that energy could be put to good use in obedience training classes.  Simone so wants to please that she will be a super student.  She’s a happy, energetic girl who gets along with other dogs. Life is good for Simone; all that is missing is a forever friend and home in her life.  Can you give Simone her “happily ever after”?  Please fill in the adoption form if you feel Simone is the girl for you.",
  status: "available",
  image: "simone-11242.jpeg"
}, {
  name: "A Basset Hound Male named Frank",
  breed: "Basset Hound",
  description: "Hey, Frank here.  I just rolled in and so far so good ... good food, warm bed, fun toys, and nice company.  At 7 years old, a guy like me is not into roughing it.  I got out of the pound in the knick of time; my time was up.  Phewww!  That was a close one but Animatch has promised me that will NEVER happen again.  Imagine a handsome guy like me in that predicament.  I might look like a sad sack but believe me I’m a fun-loving guy.  Being 7 years old, I know the ins and outs of being part of a family.  I’m a nose followed by a dog!  My nose can lead me to fun but it often leads to trouble.  I follow it with complete abandon, whether it takes me into the woods or straight to a garbage pail.  That means that I need a securely fenced yard to keep me safe.  I do like to hear myself bark/bay from time to time, it’s music to my ears but I don’t think my music would be appreciated in a condo/apartment.  I get along with other dogs and would like to live with another mellow dog.  I’d appreciate a home that knows about Bassets; we are an amazing breed!  If you need a friend, I could sure use one too.  Fill in that adoption form and let’s make it happen.",
  status: "available",
  image: "frank-11253.jpeg"
}, {
  name: "A Dachshund Male named Yankee",
  breed: "Daschund",
  description: "Yankee, a 3-year-old, Dashchund, was taken from a pound where his days were numbered.  If you look closely at Yankee’s face, you can easily see that this fellow’s whole world has been turned upside down.  He spent days at the pound and now he is at the Animatch Centre—both places with unfamiliar sights and sounds.  Yankee is stressed and nervous at this time.  We are trying very hard to make him feel safe, loved and not forgotten.  More info to come on Yankee",
  status: "available",
  image: "yankee-11271.jpeg"
}, {
  name: "A Terrier-X Male named Lantic",
  breed: "Terrier Cross",
  description: "Lantic here and I am one of the three terriers who arrived from the pound.  I might look like I’m having a bad hair day but that only adds to my charm and nothing a good brushing won’t fix.  I’m just settling in here, so I will write again soon.",
  status: "available",
  image: "lantic-11267.jpeg"
}]

Dog.create(dogs)
