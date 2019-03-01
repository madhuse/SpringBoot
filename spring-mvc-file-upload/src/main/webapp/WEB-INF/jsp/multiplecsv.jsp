<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Flat File</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href='<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href='<c:url value="/resources/dist/css/AdminLTE.min.css"/>'>
    <link rel="stylesheet" href='<c:url value="/resources/dist/css/skins/_all-skins.min.css"/>'>
    <link rel="stylesheet" href='<c:url value="/resources/plugins/iCheck/flat/blue.css"/>'>
    <link rel="stylesheet" href='<c:url value="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"/>'>
	<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
	<link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
	<link href='<c:url value="/resources/plugins/draganddrop/css/css"/>' rel="stylesheet">
	<link href='<c:url value="/resources/plugins/draganddrop/css/jquery.filer.css"/>' rel="stylesheet">
	<link href='<c:url value="/resources/plugins/draganddrop/css/themes/jquery.filer-dragdropbox-theme.css"/>' rel="stylesheet">
	<!-- css drag and drop ----->
	<link rel="stylesheet" href='<c:url value="/resources/templatenew/bootstrap/css/bootstrap.min.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/navigation.css"/>'>
	<!-- Theme style -->
	<link rel="stylesheet" href='<c:url value="/resources/templatenew/dist/css/AdminLTE.min.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/customsteps.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/templatenew/dist/css/skins/skin-blue.min.css"/>'>
	<link href='<c:url value="/resources/css/jquery-ui-1.10.4.custom.css"/>' rel="stylesheet" type="text/css"/>
	<link href='<c:url value="/resources/jQuery.filer-1.3.0/css/jquery.filer.css"/>' rel="stylesheet">
	<link href='<c:url value="/resources/jQuery.filer-1.3.0/css/themes/jquery.filer-dragdropbox-theme.css"/>' rel="stylesheet">
	<link href='<c:url value="/resources/alerts/alertify.core.css"/>' rel="stylesheet">
  <link href='<c:url value="/resources/alerts/alertify.default.css"/>' rel="stylesheet">
  <link href='<c:url value="/resources/css/loadingback.css"/>' rel="stylesheet">
</head>
 <style>
  .nopadding {
   padding: 0 !important;
   margin: 0 !important;
}
hr.vertical
{
   width: 0px;
   height: 100%; /* or height in PX */
} 
  </style>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">
    <a href="/otsieasy" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><img src='<c:url value="/resources/dist/img/logo.png"/>' height="40px" width="40px" class="img-circle" alt="User Image"></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg pull-left"><img src='<c:url value="/resources/dist/img/logo.png"/>' height="40px" width="40px" class="img-circle" alt="EASy"><b>EAS</b>y</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- The user image in the navbar-->
              <img src='<c:url value="/resources/dist/img/user.png"/>' class="user-image" alt="User Image">
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
              <span class="hidden-xs">${sessionScope.usersession.name}</span>
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <img src='<c:url value="/resources/dist/img/user.png"/>' class="img-circle" alt="User Image">

                <p>
                  ${sessionScope.usersession.name}
                  <small>@ ${sessionScope.usersession.username}</small>
                </p>
              </li>
              <!-- Menu Body -->
              
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="/otsieasy/userdetails" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="/otsieasy/logout" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-history"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src='<c:url value="/resources/dist/img/user.png"/>' class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p> ${sessionScope.usersession.name} </p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu">
        <li class="header">MENU</li>
        <!-- Optionally, you can add icons to the links -->
        <li><a href="/otsieasy"><i class="fa fa-home"></i> <span>Home</span></a></li>
        <!-- <li><a href="#"><i class="fa fa-link"></i> <span>Data Source</span></a></li> -->
        <li class="active treeview">
          <a href="#"><i class="fa fa-link"></i> <span>Data Source</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/otsieasy/flatfile"><i class="fa fa-file-excel-o" aria-hidden="true"></i> Flat File</a></li>
            <li><a href="/otsieasy/databaseconf"><i class="fa fa-database" aria-hidden="true"></i> Database</a></li>
            <li><a href="/otsieasy/apiconf"><i class="fa fa-rss-square" aria-hidden="true"></i> Api</a></li>
          </ul>
        </li>
        <li><a href="/otsieasy/selectindex"><i class="fa fa-paint-brush"></i> <span>Visualize</span></a></li>
      
      </ul>
    </section>
  </aside>
  <div class="content-wrapper">
    <section class="content-header">
    </section>
    <section class="content">
     <div class="row">
  <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 col-lg-offset-2 col-md-offset-2">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <div class="breadcrumb flat">
    <a href="/otsieasy/datasource">Choose Datasource</a>
	<a href="/otsieasy/databaseconf" >Configure Files</a>
	<a href="#" class="active"  >Choose Datatypes</a>
</div>
</div>
  </div>

  <div class="row">
      <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
      <form role="form" action="createtable" id="createselection"  name="myform" onsubmit="return validateForm()" method="post">
								<c:forEach var="filename" items="${files}" varStatus="status" >
								<div class="row">
								<div class="col-md-12">
								<div style="height: 50px" class="callout callout-info">
                                 <h4>Columns From ${filename }</h4>
                               </div>
                               </div>
                               </div>
								<div class="row">
								<c:set var="fname" value="${filename }data"></c:set>
								
								<c:set var="coldata" value="${columns[fname]}" />
								<c:forEach var="column"   items="${columns[filename]}" varStatus="status" >
								<div class="col-md-4 ">
								<div class="form-group input-group">
								<div class="col-xs-4 nopadding">
								<input required="required" id="${status.index}${status.index}"  type="text" name="${filename}[]" class="form-control" value=${column} > 
								</div>
								
								<div class="col-xs-4 nopadding" title="Column Data= ${coldata[status.index]}">
								<select did="${filename}${column}"  myid="${status.index}" id="${status.index}${status.index}${status.index}" name="datatypes[]" class="form-control datatype select2" >
														<option value="varchar">String</option>
														<option value="bigint">Integer</option>
														<option value="double precision">Double</option>
														<option value="date"">Date</option>
														<option value="timestamp">Timestamp</option>
													</select>
								</div>
								<div class="col-xs-4 nopadding" title="Column Data= ${coldata[status.index]}">
								
							
								 
    	                   <input  required="required" id="${status.index}"  type="text"  class="form-control" value=""> 
                        
								</div>

								
								
								<div class="col-xs-4 nopadding">
								<div id="${filename}${column}" style="display: none">			
								<select  name="dateformat[]" class="form-control select2">
													    <option value="">Select Format</option>
													    <option value="yyyy-mm-dd">yyyy-mm-dd</option>
														<option value="dd-mm-yyyy HH:mm:ss">dd-mm-yyyy HH:mm:ss</option>
														<option value="mm-dd-yyyy HH:mm:ss">mm-dd-yyyy HH:mm:ss</option>
														<option value="yyyy-dd-mm HH:mm:ss">yyyy-dd-mm HH:mm:ss</option>
														<option value="yyyy-dd-mm">yyyy-dd-mm</option>
														<option value="dd-mm-yyyy">dd-mm-yyyy</option>
														<option value="mm-dd-yyyy">mm-dd-yyyy</option>
														<option value="dd/mm/yyyy HH:mm:ss">dd/mm/yyyy HH:mm:ss</option>
														<option value="mm/dd/yyyy HH:mm:ss">mm/dd/yyyy HH:mm:ss</option>
														<option value="yyyy/dd/mm HH:mm:ss">yyyy/dd/mm HH:mm:ss</option>
														<option value="yyyy/mm/dd">yyyy/mm/dd</option>
														<option value="yyyy/dd/mm">yyyy/dd/mm</option>
														<option value="dd/mm/yyyy">dd/mm/yyyy</option>
														<option value="mm/dd/yyyy">mm/dd/yyyy</option>
													</select>
													</div>	
													</div>	
											</div>
									   </div>					
								</c:forEach>
								
								</div>
								<c:set var="fname" value="${filename }data"></c:set>
								
								
								
								
								<div class="col-md-4 pull-right">
								<input onclick="lodingScreen()" id="importtable" class="btn btn-info" type="submit" value="Import Data">
								</div>
								</c:forEach>
								</form>
											
      </div>
      </div>        
  
      
<div class="lodmodal"></div>
    </section>
  </div>
  <footer class="main-footer">
    <strong>Copyright &copy; 2016 <a href="http://www.otsi-usa.com">Object Technology Solutions Inc</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane active" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
       <c:forEach var="rechistory" items="${sessionScope.recentActivity}" varStatus="status">
     
          <li>
            <a href="javascript::;">
              <i class="menu-icon fa fa-history bg-red"></i>

              <div class="menu-info">
               <h4 class="control-sidebar-subheading">${rechistory }</h4>
              </div>
            </a>
          </li>
           </c:forEach>
        </ul>

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <%-- <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->
        </form>
      </div> --%>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.2.3 -->
   <script src='<c:url value="/resources/plugins/jQuery/jQuery-2.1.4.min.js"/>'></script>
    <script src='<c:url value="/resources/plugins/sparkline/jquery-ui.min.js"/>'></script>
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <script src='<c:url value="/resources/plugins/sparkline/raphael-min.js"/>'></script>
    <script src='<c:url value="/resources/plugins/sparkline/jquery.sparkline.min.js"/>'></script>
    <script src='<c:url value="/resources/plugins/knob/jquery.knob.js"/>'></script>
    <script src='<c:url value="/resources/plugins/sparkline/moment.min.js"/>'></script>
    <script src='<c:url value="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"/>'></script>
    <script src='<c:url value="/resources/plugins/slimScroll/jquery.slimscroll.min.js"/>'></script>
    <script src='<c:url value="/resources/plugins/fastclick/fastclick.min.js"/>'></script>
    <script src='<c:url value="/resources/dist/js/demo.js"/>'></script>
		
		<!-- drag & Drop -->
		<script src='<c:url value="/resources/js/jquery-3.1.0.min.js"/>' crossorigin="anonymous"></script>
	<!-- Removable drag and drop-->
	<script src='<c:url value="/resources/templatenew/plugins/jQuery/jquery-2.2.3.min.js"/>'></script>
	<script src='<c:url value="/resources/js/jquery-ui.js"/>'></script>
	<script src='<c:url value="/resources/jQuery.filer-1.3.0/js/jquery.filer.min.js"/>' type="text/javascript"></script>
	<script src='<c:url value="/resources/jQuery.filer-1.3.0/examples/dragdrop/js/custom.js"/>' type="text/javascript"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src='<c:url value="/resources/templatenew/bootstrap/js/bootstrap.min.js"/>'></script>
	<script src='<c:url value="/resources/js/bootstrap-notify.min.js"/>'></script>
	<script src='<c:url value="/resources/templatenew/plugins/select2/select2.full.min.js"/>'></script>
	<script src='<c:url value="/resources/templatenew/dist/js/app.min.js"/>'></script>
<script>
$.ajax({
	url : "${pageContext.request.contextPath}/getDataType",
	type:"GET",
	success : function(data) {
		//alert(data);
		var hasOwn = Object.prototype.hasOwnProperty;
	var a=JSON.parse(data);
var newcolumnvalue=a.columnValues;

	alert(newcolumnvalue);
	//(a.toString);
    var columnArray=[];
    columnArray =  a.columnValues;
    var nn=columnArray.toString();
   alert(nn);
	var keys = [], name;
 keys=nn.split(",");
 
	
		 
for (var i = 0; i < keys.length; i++) {
			console.log(keys[i]);
			var columnValue=document.getElementById(""+i+""+i+"").value;
			if (keys.indexOf(columnValue) > -1) {
			   var arra=[];
			   arra=a[keys[i]];
			 console.log(typeof arra);
			 var output = [];

			 $.each(arra, function(key, value)
			 {
			   output.push('<option value="'+ value +'">'+ value +'</option>');
			 });

			 $('#'+i+""+i+""+i+'').html(output.join(''));
			} 
     }
	}

	});

var arrayOfList=[];

<c:forEach var="filename" items="${files}" varStatus="status2" >
<c:forEach var="columnlength"  items="${columnLength}"  varStatus="status1">
alert(columnlength);
alert(${columnlength});
       arrayOfList.push(${columnlength});
</c:forEach>
</c:forEach>
//alert(arrayOfList);

for (var ivar = 0; ivar < 10; ivar++) {
	document.getElementById(""+ivar+"").value=arrayOfList[ivar];
}
function lodingScreen()
{
	$body = $("body");
	  $body.addClass("loading");			
}
</script>  
<script type="text/javascript">
function  validateForm()
{ 
	   var firstname = document.getElementById("selection");
	    var alpha = /^[a-zA-Z-,]+(\s{0,1}[a-zA-Z-, ])*$/;
		    if(aplha.test(firstname)) {
		    	alert("Valid");
		    	/* $("#importtable").html('Uploading...');
				 $("#importtable").click(false); */
				 return true;
			}
		    else
		    {
		       alert ("Please enter aplhabets only");
		       return false;
		    }	
}
</script>
 <script type="text/javascript">
 
 
 
 
 
 
 
 
 
 
 
	$(document.body).on('change', '.datatype', function() {
		var getname = $(this).val();
		console.log("$(this).value"+getname);
		var sby = $(this).attr('did');
		console.log("$(this).attr(did)"+sby);
		var sby1 = $(this).attr('myid');
		console.log("$(this).attr(myid)"+sby1);
		
		if (getname == "date" || getname == "timestamp") {
            console.log("selected date or timestamp");
			showDiv(sby);
		}
		
		else {
			hideDiv(sby);
		}
		
		if(getname == "bigint"){
			displayDiv(sby1);
		}
		else{
			hideDisplayDiv(sby1);
		}
	});
	
	
		 
	function displayDiv(sby1){
		
		console.log("element id should be : "+ typeof sby1);
		var ele = document.getElementById(sby1);
		console.log("element is going to execute : "+ele);
		ele.style.display = 'block';
	}
	function hideDisplayDiv(sby1){
		var ele = document.getElementById(sby1);
		
		ele.style.display = 'none';
	}
	
	function showDiv(id) {
      console.log("showDiv executed");
		//To show
		var ele = document.getElementById(id);
		console.log("element is going to execute : "+ele);
		ele.style.display = 'block';
	}

	function hideDiv(id) {

		//To show
		var ele = document.getElementById(id);
		ele.style.display = 'none';
	}
	 </script>
	 
	 <c:if test="${fn:length(flatfilefail)>0}">
<script type="text/javascript">
var idx="${flatfilefail}";
  // var fullidx=idx.substring(0,62);
alertify.alert(idx);
</script>
</c:if>
<c:if test="${fn:length(flatfilesuccess)>0}">
<script type="text/javascript">
var idx="${flatfilesuccess}";
  // var fullidx=idx.substring(0,62);
alertify.success(idx);
</script>
</c:if>

</body>
</html>