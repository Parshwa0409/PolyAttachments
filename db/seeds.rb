users = [
    {name:"Parshwa Patil", email:"parshwapatil9@gmail.com"},
    {name:"Manikanta", email:"mani@gmail.com"},
    {name:"John Doe", email:"john.dow@gmail.com"}
]

messages = [
    {sender:"Parshwa Patil", reciever:"Manikanta", msg:"Hi Manikanta !!!\nFrom:Paras" },
    {sender:"Parshwa Patil", reciever:"John Doe", msg: "Hi John Doe !!!\nFrom:Paras"},
    {sender:"Manikanta", reciever:"Parshwa Patil", msg:"Hi Parshwa Patil!!!\nFrom:Manikanta" },
    {sender:"Manikanta", reciever:"John Doe", msg: "Hi John Doe!!!\nFrom:Manikanta "},
]


users.each do |user|
    u = User.create(user)
    PolyAttachment.create(file_name:"#{u.name} - Profile PIC", attachable:u)
end

messages.each do |message|
    m = Message.create(message)
    PolyAttachment.create(file_name:"#{m.sender} attached this File-X, Sent-To: #{m.reciever}", attachable:m)
end
