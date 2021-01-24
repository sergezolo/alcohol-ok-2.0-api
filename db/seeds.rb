def build_cocktail(drink)
    cocktail = Cocktail.new
    cocktail.name = drink[:name]
    cocktail.img_url = drink[:img_url]
    cocktail.description = drink[:description]
    cocktail.instructions = drink[:instructions]
    ingredients = drink[:ingredients]
    ingredients.each_with_index do |ingredient, index|
        ingredient = Ingredient.find_or_create_by(name: ingredient[:name])
        cocktail_ingredient = cocktail.cocktail_ingredients.new
        cocktail_ingredient.ingredient_id = ingredient.id
        cocktail_ingredient.quantity = ingredients[index][:quantity]
    end
    cocktail.save
end

d1 = { 
    name: "Vodka Martini",
    img_url: "https://www.liquor.com/thmb/FHXxalvM9Z3vzbm3g48XjILTpNw=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/vodka-martini-720x720-primary-7bf9f33f067c4f81b53d8f1f73bdd4a2.jpg",
    description: "Purists will argue that a true Martini employs gin rather than vodka (and a higher proportion of vermouth to the main spirit, at that), but who are we to disagree with 007, whose oft-repeated request for a Vodka Martini is as closely associated with the series of films as his famed introduction as “Bond. James Bond”? We will, however, insist that it should be stirred rather than shaken in order to produce the most silky-smooth cocktail.",
    instructions: ["Add all the ingredients into a mixing glass with ice and stir until very well-chilled, about 20 to 30 seconds.", "Strain into a chilled cocktail glass.", "Garnish with a lemon twist."], 
    ingredients: [
        { 
            name: "vodka", 
            quantity: "2.5 ounce"
        },
        { 
            name: "dry vermouth", 
            quantity: "0.5 ounce"
        },
        { 
            name: "orange bitters", 
            quantity: "1 dash"
        },
        { 
            name: "Garnish: lemon twist", 
            quantity: ""
        }
    ]
}
build_cocktail(d1)
d2 = { 
    name: "White Russian",
    img_url: "https://www.liquor.com/thmb/C3dFiGybKy_6KXRQP4yh-sVR4nE=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/__opt__aboutcom__coeus__resources__content_migration__liquor__2017__12__20073201__white-russian-720x720-article-cbe4b9a832c64f8da0bb09407caefa7f.jpg",
    description: "The White Russian is a decadent and surprisingly easy-to-make cocktail. Combining vodka, Kahlúa and cream and serving it on the rocks creates a delicious alternative to adult milkshakes. The White Russian came about in the ’60s when someone added a bit of cream to the Black Russian, rendering it white. Neither drink is Russian in origin, but the name refers to the vodka, a spirit often associated with Russia. It would be a great story to say that the White Russian’s star rose from that point on, but that would not be true. The truth is the White Russian suffered a bit from a stodgy, antiquated reputation until the 1998 movie “The Big Lebowski” came along and breathed new life into the cocktail with Jeff Bridges’ character, the Dude, sipping it exclusively—and constantly. It’s one of popular culture’s best drinks-related successes, right up there with Carrie Bradshaw’s impact on the Cosmo. Of course, if you want to order it like the Dude, throw in the occasional call for a 'Caucasian.' The barkeep will know what you mean. When making a White Russian at home, choose a decent vodka (a Russian one, if you want to stay on theme) and a good heavy cream. Half-and-half can work in a pinch, but milk will produce a thin drink. Remember: You’re aiming for decadence.",
    instructions: ["Add the vodka and Kahlúa to a rocks glass filled with ice." , "Top with the heavy cream and stir."], 
    ingredients: [
        { 
            name: "vodka", 
            quantity: "2 ounces"
        },
        { 
            name: "Kahlúa", 
            quantity: "1 ounce"
        },
        { 
            name: "heavy cream", 
            quantity: "1 splash"
        },
    ]
}
build_cocktail(d2)
d3 = { 
    name: "Big Red Sun",
    img_url: "https://www.liquor.com/thmb/2o3aZLVPhumyohtYUm0qcNnxgKI=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Big-Red-Son_main_720x720-864f0c704f2c45cc8868fd69a4a324a3.jpg",
    description: "Jesse Vanpoucke, the lead bartender at Lawry’s The Prime Rib in Chicago, has become fond of splitting the base in a Whiskey Sour between two whiskeys, Monkey Shoulder and Power’s, to lighten the drink’s profile. What I love about this drink is how all the ingredients lean on each other—passion fruit to vanilla to light whiskey to apple,” says Vanpoucke. He quips that it’s also a nice hybrid drink if you happen to have brought a bottle of whiskey to a tropical island or an apple orchard. This recipe originally appeared as part of “5 Easy Whiskey Sour Twists to Make Right Now.”",
    instructions: ["Add all ingredients into a shaker with ice and shake until well-chilled.", "Strain into a rocks glass over fresh ice.", "Garnish with an apple fan."], 
    ingredients: [
        { 
            name: "Monkey Shoulder scotch", 
            quantity: "1 ounce"
        },
        { 
            name: "Power’s Irish whiskey", 
            quantity: "1 ounce"
        },
        { 
            name: "passion fruit liqueur (such as Giffard)", 
            quantity: "3/4 ounce"
        },
        { 
            name: "lemon juice, freshly squeezed", 
            quantity: "1 ounce"
        },
        { 
            name: "vanilla syrup", 
            quantity: "1/4 ounce"
        },
        { 
            name: "Angostura bitters", 
            quantity: "2 dashes"
        },
        { 
            name: "Greenbar apple bitters", 
            quantity: "1 dash "
        },
        { 
            name: "Garnish: apple fan", 
            quantity: ""
        },
    ]
}
build_cocktail(d3)
d4 = { 
    name: "Blood & Sand",
    img_url: "https://www.liquor.com/thmb/_TbF3u3HW1f4n2faF6s8W8s6rr8=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/blood-and-sand-720x720-primary-a27c8e8da61b410facde9292b600d908.jpg",
    description: "The Blood & Sand is a classic scotch-based cocktail that has withstood the test of time. The recipe first appeared in 1930 in “The Savoy Cocktail Book” by Harry Craddock and has become a mainstay on bar menus ever since. But did Craddock invent it, or just put it in his book? No one knows. So if we don’t know its inventor and we’ve no idea about the establishment in which it originally reared its spicy little head (unless it was the Savoy), what do we know about the drink? Well, it gets its name from a 1922 bullfighter movie starring Rudolph Valentino, the silent-film star known as “The Latin Lover.” Valentino’s performance in “Blood and Sand”—it centered on a bullfighter and was based on the novel by Vincente Blasco Ibáñez—was said to have been one of his finest, though the picture itself wasn’t exactly hailed as a masterpiece. “It is the story’s name and not the story or plot that made ‘Blood and Sand’ the big hit,” wrote a reviewer at the time. Such is not the case with the cocktail, however. The drink was introduced to me by Dale DeGroff when he held forth from behind the bar at New York’s Rainbow Room, circa 1997. When he told me about it, he said that the list of ingredients pretty much confounded him, so he just had to try one. I had to concur. Scotch, cherry brandy, sweet vermouth and orange juice don’t seem to belong in the same crib, let alone the same glass. The fact is that the Blood and Sand works very well, indeed. The key to the cocktail is to use a smooth scotch that’s not too smoky and freshly squeezed orange juice. So forget about your Islay scotches (for now), and avoid that carton of OJ in the fridge.",
    instructions: ["Add all ingredients into a shaker with ice and shake until well-chilled.", "Strain into a chilled coupe or cocktail glass.", "Garnish with an orange peel."], 
    ingredients: [
        { 
            name: "scotch", 
            quantity: "3/4 ounce"
        },
        { 
            name: "sweet vermouth", 
            quantity: "3/4 ounce"
        },
        { 
            name: "Heering cherry liqueur", 
            quantity: "3/4 ounce"
        },
        { 
            name: "orange juice, freshly squeezed", 
            quantity: "3/4 ounce"
        },
        { 
            name: "Garnish: orange peel", 
            quantity: ""
        },
    ]
}
build_cocktail(d4)
d5 = { 
    name: "Manhattan",
    img_url: "https://www.liquor.com/thmb/gSN7fXX_rGkGi-3M6bmPhE7BqAk=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/__opt__aboutcom__coeus__resources__content_migration__liquor__2018__05__10144903__Manhattan-720x720-recipe-9497922907c14d91898f557cb51f2ea3.jpg",
    description: "The Manhattan was the most famous cocktail in the world shortly after it was invented in New York City’s Manhattan Club, some time around 1880 (as the story goes). Over the years, the whiskey classic has dipped in and out of fashion before finding its footing as one of the cornerstones of the craft cocktail renaissance. Amazingly, the drink that socialites tipped to their lips in the 19th century looks and tastes pretty much the same as the one served today at any decent cocktail bar. The Manhattan’s mix of American whiskey and Italian vermouth, enlivened with a few dashes of aromatic bitters, is timeless and tasty—the very definition of what a cocktail should be. Early versions call for rye, with its spicier, edgier profile. Purists claim that it’s not a Manhattan without it, but who has ever had fun drinking with a purist? We find that bourbon creates a beautiful, if mellower, drink. And while Angostura bitters are a must in any variation, a single dash of orange bitters helps brighten the cocktail’s edges, bringing the whiskey and vermouth together seamlessly, while the brandied cherry garnish lends a touch of sweetness. Despite all of the Manhattan’s unassailable qualities, bartenders and enterprising drinkers have still found ways to tweak the recipe into myriad variations. If you split the vermouth between sweet and dry, you get the Perfect Manhattan. If you switch the ratios to make vermouth the star, you’ve stirred up a Reverse Manhattan. The Rob Roy is essentially a scotch Manhattan. And then you’ve got other named-for-New York cocktails like the Red Hook and Brooklyn, which employ their own twists to take the drink in new directions. But regardless of all the options, there is only one classic Manhattan: two parts whiskey, one part sweet vermouth and bitters. Mix one (stirred, never shaken), and you’ll see why this storied drink has remained a favorite since its inception.",
    instructions: ["Add all the bourbon (or rye), sweet vermouth and both bitters to a mixing glass with ice, and stir until well-chilled.", "Strain into a chilled coupe.", "Garnish with a brandied cherry."], 
    ingredients: [
        { 
            name: "bourbon or rye", 
            quantity: "2 ounces"
        },
        { 
            name: "sweet vermouth", 
            quantity: "1 ounce"
        },
        { 
            name: "Angostura bitters", 
            quantity: "2 dashes"
        },
        { 
            name: "orange bitters", 
            quantity: "1 dash"
        },
        { 
            name: "Garnish: brandied cherry", 
            quantity: ""
        },
    ]
}
build_cocktail(d5)
d6 = { 
    name: "Don Quixote",
    img_url: "https://www.liquor.com/thmb/um4Lqq7fiwHyEmbFrNXWWvN5JNY=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Don-Quixote-at-The-Game-and-Tiki-on-18th-photo-credit-Mack-imbibephotography_main_720x720-3cd121dbe2da4047aaab489abfe688b3.jpg",
    description: "Jo-Jo Valenzuela, the managing partner at Tiki on 18th and The Game in Washington, D.C., has been using pandan in cocktails for almost 25 years and says his customers get excited when they see it on the drinks menu. In this Daiquiri riff, it accentuates the tropical vibes from Puerto Rican and Jamaican rum, lime, and mango. “Pandan adds a fragrant green aroma and makes the mango extra smooth on the palate,” says Valenzuela, who adds that it lends a roundness to cocktails in general. He points out that in the Philippines, pandan, also referred to as screwpine leaves, are typically mixed into steamed rice. “It creates a highly aromatic rice and gives the flavorless starch a mild savory taste.” ",
    instructions: ["Add the Don Q rum, mango-pandan syrup and lime juice into a shaker with ice and shake until well-chilled.", "Strain into a rocks glass over crushed ice.", "Float the Appleton Estate rum on top.", "Garnish with the dehydrated lime wheel.", "*Mango-pandan syrup: Add 1 1/2 cups sugar, 1 1/2 cups water and 3 pandan leaves to a small saucepan. Bring to a simmer and cook on low heat for 10 to 15 minutes. Remove from heat and let cool. Add 2 cups fresh or thawed mango puree. Transfer to an airtight container. Will keep, refrigerated, for up to one week."], 
    ingredients: [
        { 
            name: "Don Q Cristal rum", 
            quantity: "1.5 ounces"
        },
        { 
            name: "mango-pandan syrup*", 
            quantity: "1 ounce"
        },
        { 
            name: "lime juice, freshly squeezed", 
            quantity: "1/2 ounce"
        },
        { 
            name: "Appleton Estate 12 Year rum", 
            quantity: "1/2 ounce"
        },
        { 
            name: "Garnish: dehydrated lime wheel", 
            quantity: ""
        },
    ]
}
build_cocktail(d6)
d7 = { 
    name: "Oaxacan Tail",
    img_url: "https://www.liquor.com/thmb/829ACVCgPoxAMAhsiqJba_pYa74=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/__opt__aboutcom__coeus__resources__content_migration__liquor__2018__01__25075850__Oaxacan-Tail-720x720-recipe-07e10ad9d58249b9953bb333d987457f.jpg",
    description: "This mezcal- and amaro-based coffee cocktail was cooked up as a brunch drink for Esters Wine Shop & Bar in Santa Monica, Calif. This Mexican-themed drink packs a zing from agave and mole bitters and can be mellowed with a bit of cream. While the recipe calls for Foro amaro, other amari can be easily substituted, such as Ramazzotti, Cynar or Averna. This recipe originally appeared as part of “5 Coffee Cocktails to Keep You Warm This Winter.”",
    instructions: ["Add all ingredients to a mixing glass with ice and stir until well-chilled.", "Strain into an Old Fashioned glass over a large ice cube."], 
    ingredients: [
        { 
            name: "Foro amaro", 
            quantity: "1 ounce"
        },
        { 
            name: "mezcal", 
            quantity: "3/4 ounces"
        },
        { 
            name: "Tapatio blanco tequila", 
            quantity: "1/4 ounce"
        },
        { 
            name: "cold-brew coffee", 
            quantity: "2 ounces"
        },
        { 
            name: "chocolate mole bitters", 
            quantity: "15 drops"
        },
    ]
}
build_cocktail(d7)
d8 = { 
    name: "Averna Cobbler",
    img_url: "https://www.liquor.com/thmb/oEAaMu3QCMLMJ3hqtKZz9YLOlWs=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/averna-cobbler-720x720-primary-5ffc669c5f6546a9aee81ac3cb84e206.jpg",
    description: "Drinkers who have been turned off of amaro by an overtly bitter expression will find Averna to be quite accessible, says Stacy Swenson, the creative drink specialist at Simple Serve, especially in this cocktail that gets sweetness and fruit from a spoonful of marmalade.",
    instructions: ["Add all ingredients into a shaker with ice and shake until well-chilled.", "Pour into a rocks glass or tumbler.", "Top with cracked ice and stir.", "Garnish with a mint sprig, blackberries and cracked black pepper."], 
    ingredients: [
        { 
            name: "Averna", 
            quantity: "1.5 ounces"
        },
        { 
            name: "sweet vermouth", 
            quantity: "1/2 ounce"
        },
        { 
            name: "lemon juice, freshly squeezed", 
            quantity: "1/2 ounce"
        },
        { 
            name: "marmalade (blackberry, black cherry or orange)", 
            quantity: "1 barspoon"
        },
        { 
            name: "Garnish: mint sprig", 
            quantity: ""
        },
        { 
            name: "Garnish: blackberries", 
            quantity: ""
        },
        { 
            name: "Garnish: cracked black pepper", 
            quantity: ""
        },
    ]
}
build_cocktail(d8)
d9 = { 
    name: "Killer Queen",
    img_url: "https://www.liquor.com/thmb/kUlre-BYYrpdmI0UZu3d8PxlAcM=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Killer-Queen-Credit-Robin-Wolf_main_720x720-351cf176f6cc4ffa85d4ff2d4d76ade6.jpg",
    description: "Robin Wolf, who runs the bar at The Hatch Rotisserie & Bar in Paso Robles, Calif., started experimenting with infusing vermouths in order to introduce new flavors without adding sugars. In this Martini variation, dried rose petals heighten the floral aromatics of Lillet Blanc.",
    instructions: ["Add all ingredients into a mixing glass with ice and stir.", "Strain into a coupe.", "Express the oil from a lemon peel over the drink.", "Garnish with a lemon twist made from the peel.", "*Dried-rose-infused Lillet: Add 2 cups Lillet Blanc and 1 Tbsp dried rose petals into a jar and seal. Leave in the refrigerator for 24 hours, shaking the jar several times during that time. Strain through a cheesecloth or coffee filter. Keeps, refrigerated, for up to one month."], 
    ingredients: [
        { 
            name: "aromatic gin", 
            quantity: "2 ounces"
        },
        { 
            name: "dried-rose-infused Lillet Blanc*", 
            quantity: "3/4 ounce"
        },
        { 
            name: "Benedictine", 
            quantity: "1/4 ounce"
        },
        { 
            name: "Angostura bitters", 
            quantity: "4 dashes"
        },
        { 
            name: "Garnish: lemon twist", 
            quantity: ""
        },
    ]
}
build_cocktail(d9)
d10 = { 
    name: "Landmaster",
    img_url: "https://www.liquor.com/thmb/cSogWJysU1hxlb8axAVRahwjMRM=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Landmaster-720x720-primary-5bd8194d3dbc4e71a51f89c6ca3b7ec6.jpg",
    description: "“Galliano is potent, and a little goes a long way,” says Andrew Nichols, the head bartender for Atlas Restaurant Group in Baltimore. “If you find yourself pouring more than half an ounce of it at a time, you’ve gone too far.” Even the quarter-ounce called for here adds a significant depth of flavor. He names savory ingredients, such as tequila, celery, carrot and fresh herbs, as pairing well with the liqueur. You’ll find nearly all of those flavors in this complex cocktail.",
    instructions: ["Add all ingredients into a shaker with ice and shake until well-chilled.", "Strain into a rocks glass over a large ice cube.", "Brush the celery leaves over the top of the drink and place them in the glass, stem side down, alongside the ice cube."], 
    ingredients: [
        { 
            name: "Fortaleza still-strength blanco tequila", 
            quantity: "1 ounce"
        },
        { 
            name: "aquavit", 
            quantity: "1/4 ounce"
        },
        { 
            name: "Galliano", 
            quantity: "1/4 ounce"
        },
        { 
            name: "grapefruit juice, freshly squeezed", 
            quantity: "1 ounce"
        },
        { 
            name: "lime juice, freshly squeezed", 
            quantity: "1/2 ounce"
        },
        { 
            name: "Fee Brothers black walnut bitters", 
            quantity: "1 dash"
        },
        { 
            name: "Scrappy’s celery bitters", 
            quantity: "1 dash"
        },
        { 
            name: "Garnish: 3 celery leaves", 
            quantity: ""
        },
    ]
}
build_cocktail(d10)
d11 = { 
    name: "Pumpkin Sazerac",
    img_url: "https://www.liquor.com/thmb/Uino-WAF4FHS5kAPRKk-3t_7pwA=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/pumpkin-sazerac-720x720-primary-62b0214f91904fdf962e9db2f06528ee.jpg",
    description: "The Sazerac is a New Orleans classic with flavors that work well at any time of year but particularly in autumn, with its base of cognac and/or rye whiskey, plus absinthe’s licorice notes and tones of winter baking spices from the bitters. All-star bartender Naren Young takes the drink’s autumn leanings even further with the addition of a spiced pumpkin syrup, and unlike so many “pumpkin spice” drinks out there, this one actually uses real pumpkin. Whether you’re making it as part of a Thanksgiving celebration or merely sipping it in front of a fire, this spirit-forward drink is sure to leave you feeling warm and cozy.",
    instructions: ["Chill a rocks glass in the freezer for 15 minutes.", "Add the cognac (or rye whiskey), pumpkin syrup and bitters into a mixing glass with ice and stir for 30 seconds.", "Remove the rocks glass from the freezer and add the absinthe, swirling it around the inside, then discard the excess.", "Strain the stirred mixture into the prepared glass.", "Twist a swath of lemon peel over the glass to express the oils onto the drink, then discard.", "*Pumpkin syrup: Add 16 ounces hot water, 3 1/2 cups granulated white sugar, 1/2 cup packed brown sugar, 1 teaspoon ground cinnamon, 1/2 teaspoon ground nutmeg, 1/2 teaspoon allspice and 20 sugar-cube-size lumps of freshly cooked pumpkin into a blender. Blend until the texture is smooth. Strain through a sieve and discard solids. Keep refrigerated."], 
    ingredients: [
        { 
            name: "cognac (or rye whiskey)", 
            quantity: "2 ounces"
        },
        { 
            name: "pumpkin syrup*", 
            quantity: "1/2 ounce"
        },
        { 
            name: "Peychaud’s bitters", 
            quantity: "3 dashes"
        },
        { 
            name: "absinthe", 
            quantity: "1/4 ounce"
        },
        { 
            name: "Garnish: lemon twist", 
            quantity: ""
        },
    ]
}
build_cocktail(d11)
d12 = { 
    name: "Bordeaux Sour",
    img_url: "https://www.liquor.com/thmb/XHiw7lWEyR9e1EarFdnZTXvDCzM=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Bordeaux-Sour-at-Blend-main_720x720-fc2b8b49a5364081a4631d4ee0e6f2f5.jpg",
    description: "“It’s great when we have opportunities to create crossover opportunities and use our wines as a key component in our cocktails,” says Michael Biddick, the owner of Blend 111, a wine bar outside Washington, D.C. His New York Sour-esque cocktail begins with a red wine from Bordeaux’s Cadillac subregion, which enhances the toasted oak, caramel and vanilla notes in the bourbon. This variation also eschews the frothy texture brought by the usual addition of egg white. “The fresh-squeezed lemon juice adds brightness, and the touch of maple syrup takes all of the rough edges off the drink,” says Biddick.",
    instructions: ["In a shaker, muddle the cherry and maple syrup.", "Add all other ingredients and ice and shake until well-chilled.", "Double-strain into a rocks glass over fresh ice.", "Garnish with a cherry."], 
    ingredients: [
        { 
            name: "maraschino cherry", 
            quantity: "1"
        },
        { 
            name: "maple syrup", 
            quantity: "1 tablespoon"
        },
        { 
            name: "Maker’s Mark 46 bourbon", 
            quantity: "2 ounces"
        },
        { 
            name: "red wine from Bordeaux (such as Chateau Brethous)", 
            quantity: "1 ounce"
        },
        { 
            name: "lemon juice, freshly squeezed", 
            quantity: "1 ounce"
        },
        { 
            name: "orange bitters", 
            quantity: "5 dashes"
        },
        { 
            name: "Garnish: maraschino cherry", 
            quantity: ""
        },
    ]
}
build_cocktail(d12)