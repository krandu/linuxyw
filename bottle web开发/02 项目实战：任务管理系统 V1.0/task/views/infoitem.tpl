%rebase base title='项目详细页  第一物流任务系统',position='项目详细页',managetopli="active open",adduser="active"

<div class="page-body">
    <div class="row">
        <div class="col-lg-12 col-sm-12 col-xs-12">
            <div class="widget flat radius-bordered">
                <div class="widget-header bg-themeprimary">
                    <span class="widget-caption">项目名：{{item_data[0].get('name','未知')}}</span>
                </div>

                <div class="widget-body">
                    <div class="widget-main ">
                        <div class="tabbable">
                            <ul class="nav nav-tabs tabs-flat" id="myTab11">
                                <li class="active">
                                    <a data-toggle="tab" href="#home11">
                                        <span class="themesecondary">项目内容</span>
                                    </a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#profile11">
                                        <span class="themesecondary">相关任务</span>
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content tabs-flat">
                                <div id="home11" class="tab-pane in active">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="col-lg-8  col-md-7 col-sm-7 col-xs-7">
                                                    <div class="widget">

                                                            <p>{{!item_data[0].get('content','未知')}}</p>

                                                    </div>
                                                </div>

                                                <div class="col-lg-4 col-md-5 col-sm-5 col-xs-5">
                                                    <!--  右  -->

                                                    <div class="col-lg-12 col-sm-12 col-xs-12">
                                                        <div class="databox databox-xlg databox-halved databox-shadowed databox-vertical no-margin-bottom">
                                                            <div class="databox-top bg-white padding-10">
                                                                <div class="col-lg-4 col-sm-4 col-xs-4">
                                                                    <img src="/assets/images/2.png" style="width:65px; height:65px;" class="image-circular bordered-3 bordered-palegreen">
                                                                </div>
                                                                <div class="col-lg-8 col-sm-8 col-xs-8 text-align-left padding-10">
                                                                    <span class="databox-header carbon no-margin">{{item_data[0].get('userid','未知')}}</span>
                                                                    <span class="databox-text lightcarbon no-margin">添加时间：{{item_data[0].get('adddate','未知')}} </span>
                                                                </div>
                                                            </div>
                                                            <div class="databox-bottom bg-white no-padding">
                                                                <div class="databox-row row-12">
                                                                    <div class="databox-row row-6 no-padding">
                                                                        <div class="databox-cell cell-4 no-padding text-align-center bordered-right bordered-platinum">
                                                                            <span class="databox-text sonic-silver  no-margin">未开始</span>
                                                                            <span class="databox-number lightcarbon no-margin">{{task_count[0].get('wait','0')}}</span>
                                                                        </div>
                                                                        <div class="databox-cell cell-4 no-padding text-align-center bordered-right bordered-platinum">
                                                                            <span class="databox-text sonic-silver no-margin">进行中</span>
                                                                            <span class="databox-number lightcarbon no-margin">{{task_count[0].get('doing','0')}}</span>
                                                                        </div>
                                                                        <div class="databox-cell cell-4 no-padding text-align-center">
                                                                            <span class="databox-text sonic-silver no-margin">已完成</span>
                                                                            <span class="databox-number lightcarbon no-margin">{{task_count[0].get('finish','0')}}</span>
                                                                        </div>
                                                                    </div>

                                                                    <div class="databox-bottom">
                                                                        <div class="progress progress-sm">
                                                                            %if task_count[0].get('cou',1) == 0:
                                                                            %cou = float(1)
                                                                            %else:
                                                                            %cou = float(task_count[0].get('cou',1))
                                                                            %end
                                                                            % bl = eval('%0.0f' %(float(task_count[0].get('finish',0)) / cou * 100))
                                                                            <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width:{{bl}}%">
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <!-- //右 -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="profile11" class="tab-pane">
                                    <div class="widget">
                                        <div class="widget-body  no-padding">
                                            <div class="tickets-container">
                                                <div class="table-toolbar" style="float:left">
                                                    <a id="adduser" href="/additem" class="btn btn-primary">
                                                        <i class="btn-label fa fa-plus"></i>发布项目
                                                    </a>
                                                    <a id="adduser" href="/item" class="btn">
                                                        <i class="btn-label fa fa-home"></i>项目大厅
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
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12 col-sm-12 col-xs-12">
        </div>
    </div>
</div>

<script type="text/javascript">
$(function(){
    /**
    *表格数据
    */

    $('#myLoadTable').bootstrapTable({
          method: 'post',
          url: '/api/getiteminfo',
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
              formatter:url_link
          },{
              field: 'inputid',
              title: '发布人',
              align: 'center',
              valign: 'middle',
              sortable: false
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
        //任务名的URL链接
        function url_link(value,row,index){
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
    $("#myLoadTable").bootstrapTable('refresh',{url: '/api/get_item_task/{{item_data[0].get('id','0')}}?witchbtn='+param});
}

</script>
