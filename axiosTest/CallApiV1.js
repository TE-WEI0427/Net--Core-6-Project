const Host = {
    config: "https://localhost:7134/"
}

// User
function GetUsers() {
    return axios.get(Host.config + 'api/User/GetUsers')
};

function GetUser(Id) {
    return axios.get(Host.config + 'api/User/GetUsers/?id=' + Id)
};

function AddUser(User) {
    return axios.post(Host.config + 'api/User/AddUser', User)
};

function UpdateUser(User) {
    return axios.get(Host.config + 'api/User/UpdateUser', User)
};

function DeleteUser(Id) {
    return axios.get(Host.config + 'api/User/DeleteUser/?id=' + Id)
};

//User Schema
class User {
    constructor(id, userName, password, email) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.email = email;
    }
}

// Auth
function Auth(Token) {

    return axios.get(Host.config + 'api/Auth/GetMe',
        {
            headers:
            {
                "Authorization": `Bearer ` + Token
            }
        })

};

// Task
function DoSomething(Token) {

    return axios.get(Host.config + 'api/task/dosomething',
        {
            headers:
            {
                "Authorization": `Bearer ` + Token
            }
        })

};