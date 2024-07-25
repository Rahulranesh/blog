const express=require ("express");
const User = require("../models/user");
const authRouter=express.Router();
//Sign-Up 
authRouter.post("/api/registerUser",async(req,res)=>
{
    try{
        const {name,email,password}=req.body;


        //Case for existingUser
        const existingUser=await User.findOne({email:email});
        if(existingUser){
            return res
            .status(400)
            .json({msg:"User with same email already exists!"});}

            const hashedPassword=await bcryptjs.hash(password,8);

            //NewUser
            let user=new User({
                email:email,
                password:hashedPassword,
                name:name
            });
            // to let mongo that new user has been created
            user=await user.save();
            res.json(user);
            

        }

    catch(e)
{
res.status(500).json({error:e.message});
}
});

//Sign-in

authRouter.post("/api/login",async (req,res)=>{

    try{
        const {email,password}=req.body;
        const user=await User.findOne({email});
        if(!user){
            return res
            .status(400)
            .json({msg:" User with this email does not exist"});
        }

        const isMatch=await bcryptjs.compare(password,user.password);
        if(!isMatch){
            return res.status(400).json({msg:"Incorrect Password"});

        }
        const token=jwt.sign({id:user._id},"passwordKey");
        res.json({
            token,...user._doc
        });

    }catch(e){
        res.status(500).json({error:e.message});
        }

});

module.exports=authRouter;