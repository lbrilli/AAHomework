// imports
const express = require("express");
const app = express();
const mongoose = require('mongoose');
const db = require('./config/keys').mongoURI;

mongoose
    .connect(db, {useNewUrlParser: true})
    .then(() => console.log("Connected to MongoDB successfully"))
    .catch(err => console.log(err));

const bodyParser = require('body-parser');
const users = require("./routes/api/users")
const tweets = require ("./routes/api/tweets")

//bodyParser middleware
app.use(bodyParser.urlencoded({ extended: false}));
app.use(bodyParser.json());


app.get("/", (req, res) => {
    const user = new User ({
        handle:"test",
        email:"test",
        password:"test"
    })
    user.save()
    res.send("Hello World")
});

app.use ("/api/users", users);
app.use("/api/tweets", tweets);

//tell app which port to render on
const port = process.env.PORT || 5000;

//log a sucess message when we are running
app.listen(port, () => console.log(`Server is running on port ${port}`));

