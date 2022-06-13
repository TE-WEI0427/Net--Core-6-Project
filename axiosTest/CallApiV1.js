const Host = {
    config: "https://localhost:7134/"
}

// User
function GetUsers() {
    return axios.get(Host.config + 'api/User/GetUsers')
};

function GetUser(id) {
    return axios.get(Host.config + 'api/User/GetUsers/?id=' + id)
};

function AddUser(User) {
    return axios.post(Host.config + 'api/User/AddUser', User)
};

function UpdateUser(User) {
    return axios.get(Host.config + 'api/User/UpdateUser', User)
};

function DeleteUser(id) {
    return axios.get(Host.config + 'api/User/DeleteUser/?id=' + id)
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