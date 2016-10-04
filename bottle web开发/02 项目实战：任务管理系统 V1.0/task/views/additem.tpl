%rebase base title='添加项目  第一物流任务系统',position='添加项目'
<div class="page-body">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="widget">
                <div class="widget-header bordered-bottom bordered-themesecondary">
                    <i class="widget-icon fa fa-tags themesecondary"></i>
                    <span class="widget-caption themesecondary">添加项目</span>
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
                    <div class="modal-body">
                        <div class="input-group">
                            <span class="input-group-addon">项目名称</span>
                            <input type="text" style="width:500px" class="form-control" id="" name="name" aria-describedby="inputGroupSuccess4Status" value="{{info.get('name','')}}">
                        </div>
                    </div>
                    <div class="modal-body">
                        <div class="input-group">
                            <span class="input-group-addon">项目类型</span>
                            <select style="width:500px" class="form-control" name="itype">
                                <option %if info.get('itype','') == '运维': selected %end value='运维'>运维</option>
                                <option 
                                %if info.get('itype','') == '产品研发': 
                                selected 
                                %end 
                                value='产品研发'>产品研发</option>
                                <option 
                                %if info.get('itype','') == '基础研发':
                                    selected 
                                %end 
                                value='基础研发'>基础研发</option>
                                <option value='GIS开发'>GIS开发</option>
                                <option value='测试'>测试</option>
                            </select>
                        </div>
                    </div>
                    <div class="modal-body">
                        <div class="input-group">
                            <span class="input-group-addon">开始时间</span>
                            <input style="width:500px" class="form-control date-picker" value="{{info.get('startdate','')}}" name="startdate" id="id-date-picker-1" type="text" data-date-format="yyyy-mm-dd" placeholder="请选择开始的开始日期">
                        </div>
                    </div>
                    <div class="modal-body">
                        <div class="input-group">
                            <span class="input-group-addon">结束时间</span>
                            <input style="width:500px" class="form-control date-picker" value="{{info.get('enddate','')}}" name="enddate" id="id-date-picker-2" type="text" data-date-format="yyyy-mm-dd" placeholder="请选择结束的结束日期">
                        </div>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <textarea id="editor_id" name="content" style="width:100%;height:400px;">
                            {{info.get('content','项目描述：')}}
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
</script>
