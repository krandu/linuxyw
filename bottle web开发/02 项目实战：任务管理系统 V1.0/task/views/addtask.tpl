%rebase base title='添加任务  第一物流任务系统',position='添加任务'
<div class="page-body">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="widget">
                <div class="widget-header bordered-bottom bordered-themesecondary">
                    <i class="widget-icon fa fa-tags themesecondary"></i>
                    <span class="widget-caption themesecondary">添加任务</span>
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
                  <form action="" method="post">
                    <div class="row">
                        <div class="input-group col-lg-4 col-md-4 col-md-offset-1 pull-left" style="padding:5px 0;margin-left:1.88%;">
                            <span class="input-group-addon">任务名</span>
                            <input type="text"  class="form-control" id="" name="subject" aria-describedby="inputGroupSuccess4Status" value="{{task_data[0].get('subject','')}}">
                        </div>
                        <div class="input-group col-lg-4 col-md-4 col-md-offset-1 pull-left" style="padding:5px 0;">
                            <span class="input-group-addon">责任人</span>
                            <select class="form-control" name="userid" id="user">
                                <option value="-1">-- 请选择任务责任人 --</option>
                                <option value="0">@所有人</option>
                                <option value="" disabled>------ 指定部门 ------</option>
                                %for department in department_data:
                                    <option value="{{department.get('id','')}}">@{{department.get('name','')}}</option>
                                %end
                                <option value="" disabled>------ 指定员工 ------</option>
                                %for user in user_data:
                                    <option value="{{user['id']}}">@{{user['name']}}</option>
                                %end
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-group col-lg-4 col-md-4 col-md-offset-1 pull-left" style="padding:5px 0;margin-left:1.88%;">
                            <span class="input-group-addon">协助人</span>
                            <select class="form-control" name="assistid" id="assist">
                                <option value="-1">-- 请选择任务协助人 --</option>
                                <option value="0">不指定</option>
                                <option value="" disabled>------ 指定部门 ------</option>
                                %for department in department_data:
                                    <option id="{{department.get('id','')}}" value="{{department.get('id','')}}">@{{department.get('name','')}}</option>
                                %end
                                <option value="" disabled>------ 指定员工 ------</option>
                                %for user in user_data:
                                    <option id="{{user['id']}}" value="{{user['id']}}">@{{user['name']}}</option>
                                %end
                            </select>
                        </div>
                        <div class="input-group col-lg-4 col-md-4 col-md-offset-1 pull-left" style="padding:5px 0;">
                            <span class="input-group-addon">所属项目</span>
                            <select class="form-control" name="itemid" id="item">
                                <option value="-1">-- 请选择任务所属的项目名 --</option>
                                <option value="0">不指定项目</option>
                                %for item in item_data:
                                    <option value="{{item.get('id','')}}">{{item.get('name','')}}</option>
                                %end
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-group col-lg-4 col-md-4 col-md-offset-1 pull-left" style="padding:5px 0;margin-left:1.88%;">
                            <span class="input-group-addon">优先级</span>
                            <select class="form-control" name="priority" id="priority">
                                <option value="-1">-- 请选择任务紧急状态 --</option>
                                <option value="1">不急</option>
                                <option value="2">一般</option>
                                <option value="3">很急</option>
                                <option value="4">紧急</option>
                            </select>
                        </div>
                        <div class="input-group col-lg-4 col-md-4 col-md-offset-1 pull-left" style="padding:5px 0;">
                            <span class="input-group-addon">任务类别</span>
                            <select class="form-control" name="departmentid" id="departmentid">
                                <option value="-1">-- 请选择任务所属类别 --</option>
                                %for department in department_data:
                                    <option value="{{department.get('id','')}}">{{department.get('name','')}}</option>
                                %end
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-group col-lg-4 col-md-4 col-md-offset-1 pull-left" style="padding:5px 0;margin-left:1.88%;">
                            <span class="input-group-addon">开始时间</span>
                            <input class="form-control date-picker" value="{{task_data[0].get('startdate','')}}" name="startdate" id="id-date-picker-1" type="text" data-date-format="yyyy-mm-dd" placeholder="请选择开始的开始日期">
                        </div>
                        <div class="input-group col-lg-4 col-md-4 col-md-offset-1 pull-left" style="padding:5px 0;">
                            <span class="input-group-addon">结束时间</span>
                            <input class="form-control date-picker" value="{{task_data[0].get('enddate','')}}" name="enddate" id="id-date-picker-2" type="text" data-date-format="yyyy-mm-dd" placeholder="请选择结束的结束日期">
                        </div>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <textarea id="editor_id" name="content" style="width:100%;height:400px;">
                            {{task_data[0].get('content','任务描述：')}}
                            </textarea>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" style="float:left" class="btn btn-primary">提交</button>
                    </div>
                </div>
              </form>
            </div>
        </div>
    </div>
</div>
<script src="/assets/js/datetime/bootstrap-datepicker.js"></script>
<script charset="utf-8" src="/assets/kindeditor/kindeditor.js"></script>
<script charset="utf-8" src="/assets/kindeditor/lang/zh_CN.js"></script>
<script>
    $('.date-picker').datepicker();     //时间插件
    KindEditor.ready(function(K) {
            window.editor = K.create('#editor_id');
    });
    $(function(){
        var userid = {{task_data[0].get('userid','-1')}}
        var assist = {{task_data[0].get('assistid','-1')}}
        var item = {{task_data[0].get('itemid','-1')}}
        var priority = {{task_data[0].get('priority','-1')}}
        var departmentid = {{task_data[0].get('departmentid','-1')}}
        $('#user').val(userid);
        $('#assist').val(assist);
        $('#item').val(item);
        $('#priority').val(priority);
        $('#departmentid').val(departmentid);
    })
</script>
