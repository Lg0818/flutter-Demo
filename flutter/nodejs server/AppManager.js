const ws = require('nodejs-websocket');
const htpp = require('http');

//const server = http.createServer();

//send msg
const boardcast = (str) => {
    console.log(str);
    server.connections.forEach((connect) => {
        connect.sendText(str)
    })
};

//connect and getAppMsg
const server = ws.createServer((connect) => {
    console.log("AppBase connect AppManager");
    connect.on('text', (str) => {
        let data = JSON.parse(str);
        switch (data.interface) {
            case 'OnInActiveView':
                console.log("AppManager : request onInActiveView to AppBase")
                boardcast(JSON.stringify({
                    interface: 'onInActiveView',
                    result: 0,
                    app_id: 'airconUI',
                    connects: 'ChangeToAirconPage',
                }));
                break;
            case 'OnActiveView':
                console.log("AppManager : request OnActiveView to AppBase")

                break;
            case 'resonInActiveView':
                console.log("AppManager : recive resOnInActiveView from AppBase ")
                console.log("AppManager : request OnActiveView to AppBase")
                boardcast(JSON.stringify({
                    interface: 'OnActiveView',
                    result: 0,
                    app_id: 'airconUI',
                    connects: 'ChangeToAirconPage',
                }));
                break;
            case 'resOnActiveView':
                console.log("AppManager : recive resOnActiveView from AppBase ")
                console.log("AppManager : request OnActiveView to AppBase")
                boardcast(JSON.stringify({
                    interface: 'OnActiveView',
                    result: 0,
                    app_id: 'airconUI',
                    connects: 'ChangeToAirconPage',
                }));
                break;
            default:
                break;
        }

    });

    //close
    // connect.on('close', () => {

    //     boardcast(JSON.stringify({
    //         type: 'close',
    //         message: 'AppManager connect close'
    //     }));
    // });

    //error
    connect.on('error', (err) => {
        console.log(err);
    })
    //listen port
}).listen(10002, () => {
    console.log("AppManager server running")
});

// ArbitrationManagerからデータを受け取る
module.exports = data => {
    console.log('AppManager:IPC from ArbitrationManager');
    console.log(data);
    console.log('AppManager::InactiveView request to AppBase.');
    boardcast(JSON.stringify({
        interface: 'onInActiveView',
        retcode: 0,
        app_id: data.app_id,
    }));
};