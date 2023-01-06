const express = require("express");
const mongoose = require("mongoose");
const authRouter = require("./routes/auth.js");

const DBURL =
  "mongodb+srv://sandesh:sandesh@cluster0.kqu2uxe.mongodb.net/?retryWrites=true&w=majority";

const PORT = 3000; 
const app = express();


app.use(express.json());
app.use(authRouter);



mongoose
  .connect(DBURL)
  .then(() => {
    console.log("mongo Connection sucessful");
  })
  .catch( (e)=> {
    console.log(e);
  });
  
app.listen(PORT,"0.0.0.0", () => {
  console.log(`connection sucessful at port ${PORT}`);
});
