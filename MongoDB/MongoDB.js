use smallDogs;

    db.smallDogs.insertMany([

        {
            name: "Chihuahua",
            origin: "Mexico",
            height: { min: 8, max: 23, unit: "cm"},
            weight: { min: 1, max: 3, unit: "kg"},
            lifeExpectancy: { min: 12, max: 20, unit: "years"},
            commonColors: [ "Fawn", "Cream", "Red", "Black"]
            },

        {
            name: "Pomeranian",
            origin: ["Germany", "Poland", "Pomerania"],
            height: { min: 18, max: 22, unit: "cm" },
            weight: { min: 1.4, max: 3.2, unit: "kg"},
            lifeExpectancy: { min: 12, max: 16, unit: "years"},
            commonColors: [ "Orange", "Black", "Cream", "White"]
            },

        {
            name: "Bichón Havanés",
            origin: "Cuba",
            height: { min: 22, max: 29, unit: "cm"},
            weight: { min: 3, max: 6, unit: "kg"},
            lifeExpectancy: { min: 14, max: 16, unit: "years"},
            commonColors: [ "Black", "Cream", "Gold", "Red"]
        },



        ]);

    db.smallDogs.insertOne(
        {
        name: "Shih Tzu",
        origin: "Tibet",
        height: { min: 20, max: 28, unit: "cm"},
        weight: { min: 4, max: 7.5, unit: "kg"},
        lifeExpectancy: { min: 10, max: 16, unit: "years"},
        commonColors: [ "Black", "White", "Gold", "Silver"]});

    db.smallDogs.find()

s