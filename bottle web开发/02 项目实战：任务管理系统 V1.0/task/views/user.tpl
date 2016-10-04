%rebase base title='用户管理  第一物流任务系统',position='用户管理',managetopli="active open",adduser="active"

<div class="page-body">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="widget">
                <div class="widget-header bordered-bottom bordered-themesecondary">
                    <i class="widget-icon fa fa-tags themesecondary"></i>
                    <span class="widget-caption themesecondary">用户列表</span>
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
                <div style="padding:-10px 0px;" class="widget-body no-padding">
                    <div class="tickets-container">
                        <div class="table-toolbar" style="float:left">
                            <a id="adduser" href="javascript:void(0);" class="btn  btn-primary ">
                                <i class="btn-label fa fa-plus"></i>添加用户
                            </a>
                            <a id="changeuser" href="javascript:void(0);" class="btn btn-warning shiny">
                                <i class="btn-label fa fa-cog"></i>修改用户
                            </a>
                            <a id="deluser" href="javascript:void(0);" class="btn btn-darkorange">
                                <i class="btn-label fa fa-times"></i>删除用户
                            </a>
                        </div>
                       <table id="myLoadTable" class="table table-bordered table-hover"></table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" >
      <div class="modal-content" id="contentDiv">
         <div class="widget-header bordered-bottom bordered-blue ">
           <i class="widget-icon fa fa-pencil themeprimary"></i>
           <span class="widget-caption themeprimary" id="modalTitle">添加用户</span>
        </div>

         <div class="modal-body">
            <div>
            <form id="modalForm">
                <div class="form-group">
                  <label class="control-label" for="inputSuccess1">姓名：</label>
                  <input type="text" class="form-control" id="name" name="name" require>
                </div>
                <div class="form-group">
                  <label class="control-label" for="inputSuccess1">帐号：</label>
                  <input type="text" class="form-control" id="username" name="username" require>
                </div>
                <div class="form-group">
                  <label class="control-label" for="inputSuccess1">密码：</label>
                  <input type="password" class="form-control" id="passwd" name="passwd" require>
                </div>
                <div class="form-group">
                  <label class="control-label" for="inputSuccess1">生日：</label>
                  <input type="text" class="form-control" id="birthday" name="birthday">
                </div>
                <div class="form-group">
                  <label class="control-label" for="inputSuccess1">性别：</label>
				  <select id="sex" style="width:100%;" name="sex">
                    <option value='女'>女</option>
                    <option value='男'>男</option>
                 </select>
                </div>
				<div class="form-group">
                  <label class="control-label" for="inputSuccess1">部门：</label>
				  <select id="department" style="width:100%;" name="department">
                    <option value=''>请选择部门</option>
                    %for name in department_result:
                        <option value='{{name.get('id','')}}'>{{name.get('name','')}}</option>
                    %end
                 </select>
                </div>
                <div class="form-group">
                  <label class="control-label" for="inputSuccess1">QQ号：</label>
                  <input type="text" class="form-control" id="qq" name="qq">
                </div>
				<div class="form-group">
                  <label class="control-label" for="inputSuccess1">邮箱：</label>
                  <input type="text" class="form-control" id="email" name="email">
                </div>
                <div class="form-group">
                  <label class="control-label" for="inputSuccess1">电话：</label>
                  <input type="text" class="form-control" id="phone" name="phone">
                </div>
                <div class="form-group">
                  <label class="control-label" for="inputSuccess1">权限：</label>
                  <select id="access" style="width:100%;" name="access">
                    <option value='0'>普通</option>
                    <option value='1'>管理</option>
                 </select>
                <br></br>
                <input type="hidden" id="hidInput" value="">
                <button type="button" id="subBtn" class="btn btn-primary  btn-sm">提交</button>
                <button type="button" class="btn btn-warning btn-sm" data-dismiss="modal">关闭</button> 
             </form>
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
          url: '/api/getuser',
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
              field: 'bianhao',
              title: 'checkbox',      
              checkbox: true,
          },{
              field: 'id',
              title: '编号',
              align: 'center',
              valign: 'middle',
              width:25,
              sortable: false,
          },{

              field: 'name',
              title: '姓名',
              align: 'center',
              valign: 'middle',
              sortable: false
          },{
              field: 'username',
              title: '帐号',
              align: 'center',
              valign: 'middle',
              sortable: false
          },{
              field: 'sex',
              title: '性别',
              align: 'center',
              valign: 'middle',
              sortable: false
          },{
              field: 'birthday',
              title: '生日',
              align: 'center',
              valign: 'middle',
              sortable: false
          },{
              field: 'department',
              title: '部门',
              align: 'center',
              valign: 'middle',
              sortable: false
          },{
              field: 'qq',
              title: 'QQ',
              align: 'center',
			  valign: 'middle',
              sortable: false
          },{
              field: 'email',
              title: '邮箱',
              align: 'center',
              valign: 'middle',
              sortable: false
          },{
              field: 'phone',
              title: '电话',
              align: 'center',
              valign: 'middle',
              sortable: false
          },{
              field: 'adddate',
              title: '加入时间',
              align: 'center',
              valign: 'middle',
              sortable: false
          },{
              field: 'access',
              title: '权限',
              align: 'center',
              valign: 'middle',
              sortable: false
          }]
      });

    /**
    *添加弹出框
    */

	$('#adduser').click(function(){
        $('#modalTitle').html('添加用户');
        $('#hidInput').val('0');
        $('#myModal').modal('show');
        $('#modalForm')[0].reset();
        isEdit = 0;
    });


    /**
    *修改弹出框
    */

    $('#changeuser').popover({
    	    html: true,
    	    container: 'body',
    	    content : "<h3 class='btn btn-danger'>请选择一条进行操作</h3>",
    	    animation: false,
    	    placement : "top"
    }).on('click',function(){
    		var result = $("#myLoadTable").bootstrapTable('getSelections');
    		if(result.length <= 0){
    			$(this).popover("show");
    			setTimeout("$('#changeuser').popover('hide')",1000)
    		}
    		if(result.length > 1){
    			$(this).popover("show");
    			setTimeout("$('#changeuser').popover('hide')",1000)
    		}
    		if(result.length == 1){
                $('#changeuser').popover('hide');
                $('#name').val(result[0]['name']);
                $('#username').val(result[0]['username']);
                $('#passwd').val(result[0]['passwd']);
                $('#birthday').val(result[0]['birthday']);
                $('#sex').val(result[0]['sex']);
                $('#qq').val(result[0]['qq']);
                $('#email').val(result[0]['email']);
				$('#department').val(result[0]['department']);
                $('#phone').val(result[0]['phone']);
                $('#access').val(result[0]['access']);
                $('#modalTitle').html('修改用户');     //头部修改
                $('#hidInput').val('1');            //修改标志
                $('#myModal').modal('show');
                editId = result[0]['id'];
				isEdit = 1;
    		}
        });

    /**
    *提交按钮操作
    */
    $("#subBtn").click(function(){
           var name = $('#name').val();
           var username = $('#username').val();
           var passwd = $('#passwd').val();
           var birthday = $('#birthday').val();
           var sex = $('#sex').val();
           var qq = $('#qq').val();
           var email = $('#email').val();
           var department = $('#department').val(); 
           var phone = $('#phone').val(); 
           var access = $('#access').val(); 
           var postUrl;
           if(isEdit==1){
                postUrl = "/changeuser/"+editId;           //修改路径
           }else{
                postUrl = "/adduser";          //添加路径
           }

           $.post(postUrl,{name:name,username:username,passwd:passwd,birthday:birthday,sex:sex,qq:qq,email:email,department:department,phone:phone,access:access},function(data){
                  if(data==0){
                    $('#myModal').modal('hide');
                    $('#myLoadTable').bootstrapTable('refresh');
                    message.message_show(200,200,'成功','操作成功');   
                  }else if(data==-1){
                      message.message_show(200,200,'失败','操作失败');
                  }else{
                        console.log(data);return false;
                }
            },'html');
       });

        /**
        *删除按钮操作
        */        
    $('#deluser').popover({
                html: true,
                container: 'body',
                content : "<h3 class='btn btn-danger'>请选择要删除的记录</h3>",
                animation: false,
                placement : "top"
        }).on('click',function(){
            var res = $("#myLoadTable").bootstrapTable('getSelections');
            var str = '';
            if(res.length <= 0){
                $(this).popover("show");
                setTimeout("$('#deluser').popover('hide')",1000)
            }else{
                $(this).popover("hide");
                for(i in res){
                    str += res[i]['id']+',';
                }
                $.post('/deluser',{str:str},function(data){
                    if(data==0){
                        message.message_show(200,200,'删除成功',res.length+'条记录被删除');
                        $('#myLoadTable').bootstrapTable('refresh');
                    }else{
                        message.message_show(200,200,'失败','删除失败');
                    }
                },'html');  
                
            }
        });
        
})
</script>
