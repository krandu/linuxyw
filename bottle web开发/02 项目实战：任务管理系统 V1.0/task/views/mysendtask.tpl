%rebase base title='任务列表  第一物流任务系统',position='任务列表',managetopli="active open",adduser="active"

<div class="page-body">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="widget">
                <div class="widget-header bordered-bottom bordered-themesecondary">
                    <i class="widget-icon fa fa-tags themesecondary"></i>
                    <span class="widget-caption themesecondary">我发布的任务列表</span>
                    <div class="widget-buttons">
                        <a href="#" data-toggle="maximize">
                            <i class="fa fa-expand"></i>
                        </a>
                        <a href="#" data-toggle="collapse">
                            <i class="fa fa-minus"></i>
                        </a>
                        <a href="#" data-toggle="dispose">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>

                </div><!--Widget Header-->
                <div class="widget-body  no-padding">
                    <div class="tickets-container">
                        <div class="table-toolbar" style="float:left">
                            <a id="adduser" href="/addtask" class="btn btn-primary">
                                <i class="btn-label fa fa-plus"></i>发布任务
                            </a>
                            <a id="adduser" href="/taskinfo" class="btn">
                                <i class="btn-label fa fa-home"></i>任务大厅
                            </a>
                            <a id="adduser" href="/mysendtask" class="btn">
                                <i class="btn-label fa fa-user"></i>我发起的任务
                            </a>
							<a id="adduser" href="#" onclick = "getdata(0)" class="btn">
                                <i class="btn-label fa fa-times-circle" ></i>未开始
                            </a>
                            <a id="changeuser" href="#" onclick = "getdata(1)" class="btn">
                                <i class="btn-label fa fa-clock-o" ></i>进行中
                            </a>
                            <a id="deluser" href="#" class="btn" onclick = "getdata(2)">
                                <i class="btn-label fa fa-check-square-o" ></i>已完成
                            </a>
                        </div>

                       <table id="myLoadTable" class="table table-bordered table-hover"></table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
$(function(){
    /**
    *表格数据
    */
    var editId;        //定义全局操作数据变量
	var isEdit;
    $('#myLoadTable').bootstrapTable({
          method: 'post',
          url: '/api/getmysendtask',
          contentType: "application/json",
          datatype: "json",
          cache: false,
          checkboxHeader: true,
          striped: true,
          pagination: true,
          pageSize: 15,
          pageList: [10,20,50],
          search: true,
          showColumns: true,
          showRefresh: true,
          minimumCountColumns: 2,
          clickToSelect: true,
          smartDisplay: true,
          //sidePagination : "server",
          sortOrder: 'asc',
          sortName: 'id',
          columns: [{
              field: 'id',
              title: '编号',
              align: 'center',
              valign: 'middle',
              width:25,
              sortable: false
          },{

              field: 'subject',
              title: '任务名',
              align: 'center',
              valign: 'middle',
              sortable: false,
              formatter:getinfo1
          },{

              field: 'userid',
              title: '责任人',
              align: 'center',
              valign: 'middle',
              sortable: false
          },{

              field: 'assistid',
              title: '协助人',
              align: 'center',
              valign: 'middle',
              sortable: false
          },{
              field: 'itemid',
              title: '所属项目',
              align: 'center',
              valign: 'middle',
              sortable: false
          },{
              field: 'departmentid',
              title: '任务部门',
              align: 'center',
              valign: 'middle',
              sortable: false
          },{
              field: 'priority',
              title: '优先级',
              align: 'center',
			  valign: 'middle',
              sortable: false,
              formatter:priority
          },{
              field: 'status',
              title: '状态',
              align: 'center',
              valign: 'middle',
              sortable: false,
              formatter:status
          },{
              field: 'startdate',
              title: '开始时间',
              align: 'center',
              valign: 'middle',
              sortable: false
          },{
              field: 'enddate',
              title: '结束时间',
              align: 'center',
              valign: 'middle',
              sortable: false
          },{
              field: '',
              title: '操作',
              align: 'center',
              valign: 'middle',
              width:140,
              formatter:getinfo

          }]
      });
        //定义列操作
        function getinfo(value,row,index){
            eval('rowobj='+JSON.stringify(row))
            return [
                '<a href="/edittask/'+rowobj['id']+'" class="btn-sm btn-info">',
                    '<i class="fa fa-edit"> 编辑</i>',
                 '</a>',' ',
                '<a href="/deltask/'+rowobj['id']+'" class="btn-sm btn-danger">',
                    '<i class="fa fa-times"> 删除</i>',
                 '</a>'
            ].join('');
        }
        //
        function getinfo1(value,row,index){
            eval('rowobj='+JSON.stringify(row))
            return [
                '<a href="/infotask/'+rowobj['id']+'" style="text-decoration:none">',
                    rowobj['subject'],
                 '</a>'
            ].join('');
        }


        function status(value,row,index){
            eval('var rowobj='+JSON.stringify(row))
            var statusstr = '';
            if(rowobj['status'] == '0'){
                statusstr = '<span class="label label-danger">未开始</span>'
            }else if(rowobj['status'] == '1'){
                statusstr = '<span class="label label-success">进行中</span>'
            }else if(rowobj['status'] == '2'){
                statusstr = '<span class="label label-default">已完成</span>'
            }
            return [
                statusstr
            ].join('');
        }

        function priority(value,row,index){
			eval('var rowobj='+JSON.stringify(row))
			var prioritystr = '';
			if(rowobj['priority'] == '1'){
				statusstr = '<span class="badge badge-info">1</span>'
			}else if(rowobj['priority'] == '2'){
				statusstr = '<span class="badge badge-success">2</span>'
			}else if(rowobj['priority'] == '3'){
				statusstr = '<span class="badge badge-warning">3</span>'
			}else if(rowobj['priority'] == '4'){
				statusstr = '<span class="badge badge-danger">4</span>'
			}
			return [
				statusstr
			].join('');
        }
})
function getdata(param){
    $("#myLoadTable").bootstrapTable('refresh',{url: '/api/getmysendtask?witchbtn='+param});
}

</script>
