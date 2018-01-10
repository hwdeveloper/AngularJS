function DropDao(){

    this.queryAll=function(callback){
        //1,引入模块
        var DropMapping= require("./DropMapping.js");
        //2,获得对象
        var dropMapping = new DropMapping();
        dropMapping.init();
        //3,查询数据
        dropMapping.queryAll(function (data) {
            callback(data);
        })
    }

}
module.exports=DropDao;