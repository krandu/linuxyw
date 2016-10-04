%rebase base title='任务详细  第一物流任务系统',position='任务详细'
<div class="page-body">
    <div class="row">
        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
            <div class="widget">
                <div class="widget-header bordered-bottom bordered-themesecondary" style="height:65px">
                    <i class="themesecondary" style="font-size:200%;line-height:65px;margin-left:10px;"></i>
                    <span class="widget-caption themesecondary" ><h3><b style="font-family:微软雅黑">【{{taskinfo[0].get('status','')}}】 {{taskinfo[0].get('subject','无')}}</b></h3></span>
                </div>
                <div class="widget-body  no-padding">
                    <div class="tickets-container">
						<div class="" style="line-height:25px;margin-bottom:15px;"><b>【{{taskinfo[0].get('inputid','未知')}}】</b>于 {{taskinfo[0].get('inputdate','未知')}}  发布给<b>【{{taskinfo[0].get('userid','未知')}}】</b>的任务,要求在<b> {{taskinfo[0].get('enddate','未知')}} </b>前完成</h4></div>
						<div style="margin-bottom:15px;">
							<span class="label label-info" style="font-size:16px;">内容</span>
							<p class="nav-0610"><h5 style="line-height:25px">{{!taskinfo[0].get('content','未知')}}</h5></p>
						</div>

						<div style="">
							<p><span class="label label-info" style="font-size:16px;margin-top:15px;">回复</span></p>
							<p><hr style="height:1px;border:none;border-top:1px dashed #dddeee;" /></p>
						</div>
						%for reply in reply_data:
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="border-bottom:#dddeee dashed 1px;margin-bottom:10px;">
                                    <div class="col-lg-1 col-md-2 col-sm-2 col-xs-2">
                                        <div><img src="{{reply.get('image')}}" class="img-circle text-center"  style="width:50px;"></img></div>
                                        <div style="width:50px;text-align:centre;margin-left:6px;">{{reply.get('userid')}}</div>
                                    </div>
                                    <div style="" class="col-lg-11 col-md-10 col-sm-10 col-xs-10">
                                        <div style="float:left;width:100%;min-height:50px">{{!reply.get('content')}}</div>
                                        <div style="height:20px;float:left;text-align:right;width:100%;color:#cfcfcf;">回复时间：{{reply.get('editdate')}}</div>
                                    </div>
                                </div>
                            </div>
						%end

						<form action="" method="post">
						<div class="form-group">
							<textarea id="editor_id" name="content" style="width:100%;height:300px;">
							</textarea>
						</div>
						<div class="modal-footer">
							<button type="submit" style="float:left" class="btn btn-primary">发表</button>
						</div>
						</form>
                    </div>
                </div>
            </div>
        </div>
       <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
           <div class="orders-container">
               <div class="row">
                  <div class="col-lg-12 col-sm-12 col-xs-12">
                      <div class="widget-header bordered-bottom bordered-blue ">
                          <i class="widget-icon fa fa-pencil themeprimary"></i>
                          <span class="widget-caption themeprimary">任务操作</span>
                      </div>
                      <div class="widget-body">
                        %if taskinfo[0].get('userid','未知') == myusername:
                            <div>
                              % if taskinfo[0].get('status','') == '进行中':
                                    <p><button type="submit"  onclick="operOrder('end')" class="btn btn-primary btn-sm">完成</button></p>
                                    <p>责任人：{{taskinfo[0].get('userid','未知')}}</p>
                                    <p>协助人：{{taskinfo[0].get('assistid','未知')}}</p>
                              % elif taskinfo[0].get('status','') == '未开始':
                                    <p><button type="submit"  onclick="operOrder('start')" class="btn btn-primary btn-sm">接单</button></p>
                                    <p>责任人：{{taskinfo[0].get('userid','未知')}}</p>
                                    <p>协助人：{{taskinfo[0].get('assistid','未知')}}</p>
                              % elif taskinfo[0].get('status','') == '已完成':
                                    <p>该任务已完成</p>
                                    <p>完成人：{{taskinfo[0].get('userid','未知')}}</p>
                                    <p>协助人：{{taskinfo[0].get('assistid','未知')}}</p>
                                    <p>开始时间：{{taskinfo[0].get('begindate','未知')}}</p>
                                    <p>完成时间：{{taskinfo[0].get('finishdate','未知')}}</p>
                              % end
                              </div>
                          </div>
                        %else:
                            %if taskinfo[0].get('status','') == '已完成':
                                <p>该任务已完成</p>
                                <p>完成人：{{taskinfo[0].get('userid','未知')}}</p>
                                <p>协助人：{{taskinfo[0].get('assistid','未知')}}</p>
                                <p>开始时间：{{taskinfo[0].get('begindate','未知')}}</p>
                                <p>完成时间：{{taskinfo[0].get('finishdate','未知')}}</p>
                            %else:
                                <p>只有<b>【{{taskinfo[0].get('userid','未知')}}】</b>有权接单</p>
                                <p>责任人：{{taskinfo[0].get('userid','未知')}}</p>
                                <p>协助人：{{taskinfo[0].get('assistid','未知')}}</p>

                            %end
                        %end

                    </div>
                </div>
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

	function operOrder(param){
		$.post('/infotask/{{taskinfo[0].get('id','')}}',{oper:param},function(data){
            if(data == 1){
               window.location.reload()
            }else{
                alert('操作失败')
            }
		},'html');
	}
</script>
