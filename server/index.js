const express = require("express");
const mongoose =require("mongoose");
const authRouter =require("./routes/auth");

const PORT=process.env.PORT || 3000;
const app=express();

app.use(express.json());

app.use(authRouter);

const DB= "mongodb+srv://Srika:Sri2208@cluster0.e94nrwy.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"
mongoose
.connect(DB)
.then(()=>{
    console.log("Connection Successful");
})
.catch((e)=>{
console.log(e);

});
app.listen(PORT,"0.0.0.0", ()=>{
    console.log(`Connected to Port ${PORT}` );
});
