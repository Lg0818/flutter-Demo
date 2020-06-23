const ws = require('nodejs-websocket');
const htpp = require('http');
var appManager = require('./AppManager');
var appManager2 = require('./AirCon');

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
    console.log("web app connect ArbitrationManager");
    connect.on('text', (str) => {
        let data = JSON.parse(str);
        console.log(data);
        switch (data.interface) {
            case 'ArbitrateUiApps':
                console.log("ArbitrationManager : recived USB Audio UI ArbitrateUiApps")
                console.log("ArbitrationManager IPC to AppManager")
                appManager({
                    interface: data.interface,
                    retcode: 0,
                    result: 'MusicPage requst change to AirConPage ',
                    app_id: data.param[0].app_id,
                    contents: 'ChangeToAirconPage'
                })
                break;
            default:
                break;
        }
    });

    //close
    // connect.on('close',()=>{

    //     boardcast(JSON.stringify({
    //         type:'close',
    //         message:'ArbitrationManager connect close'
    //     }));
    // });

    //error
    connect.on('error', (err) => {
        console.log(err);
    })
    //listen port
}).listen(10001, () => {
    console.log("ArbitrationManager server running")
});

exports.registAppManager = mng => {
    appManager = mng;
}
