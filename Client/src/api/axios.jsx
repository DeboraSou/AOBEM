import axios from "axios";

export default axios.create({
    baseURL: 'http://localhost:3333'
});

// JSON-Server.
// export default axios.create({
//     baseURL: 'http://localhost:3003'
// });