const ws = require('nodejs-websocket');
const htpp = require('http');

//const server = http.createServer();

//send msg
const boardcast = (str) => {
    console.log(str);+
    server.connections.forEach((connect) => {
        connect.sendText(str)
    })
};

//connect and getAppMsg
const server = ws.createServer((connect) => {
    console.log("AirConUI connect AirCon");
    connect.on('text', (str) => {
        let data = JSON.parse(str);
        switch (data.interface) {
            case 'SetPreferenc':
                console.log(data)
                console.log("AirCon : recive AirConUI SetPreferenc")
                console.log("AirCon : request AirConUI OnInctiveView")
                boardcast(JSON.stringify(
                    data
                ));
                break;
            default:
                break;
        }

    });

    //close
    connect.on('close', () => {

        boardcast(JSON.stringify({
            type: 'close',
            message: 'AirCon connect close'
        }));
    });

    //error
    connect.on('error', (err) => {
        console.log(err);
    })
    //listen port
}).listen(10003, () => {
    console.log("AirCon server running")
});

