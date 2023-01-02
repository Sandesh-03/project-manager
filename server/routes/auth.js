const express = require("express");
const authRouter = express.Router();

const User = require("../models/user");

authRouter.post("/api/register", async (req, res) => {
 try{
          const { name, email, password,confirmPass } = req.body;
      
          const existingUser = await User.findOne({ email });
          if (existingUser) {
            return res
              .status(400)
              .json({ msg: "Email already exists!" });
          }
      
  
    let user = new User({
      name,
      email,
      password,
      confirmPass,
    });
  
    user = await user.save();
    res.json(user);
            }catch (e) {
     res.status(500).json({
         error:e.message
     });

 }
});
module.exports = authRouter;
