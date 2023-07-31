<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html lang="en">

<jsp:include page="head.jsp"></jsp:include>

  <body>
  
  <jsp:include page="theme-loader.jsp"></jsp:include>
  
  <!-- Pre-loader end -->
  <div id="pcoded" class="pcoded">
      <div class="pcoded-overlay-box"></div>
      <div class="pcoded-container navbar-wrapper">
          <jsp:include page="navbar.jsp"></jsp:include>

          <div class="pcoded-main-container">
              <div class="pcoded-wrapper">
                  
                  <jsp:include page="navbar-mainmenu.jsp"></jsp:include>
                  
                  <div class="pcoded-content">
                      
                      <jsp:include page="pageheader.jsp"></jsp:include>
                      
                        <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-body start -->
                                    <div class="page-body">
                                        <h3>Cadastro de usuário</h3>
                                        <hr><br>
                                        <div class="row">
											<div class="col-sm-12">
        										<!-- Basic Form Inputs card start -->
                								<div class="card">
                        							<div class="card-header">
                                						<h5>Cadastro de Tcholas</h5>
                                					</div>
                              						<div class="card-block">
                                						<h4 class="sub-title">Informe os dados abaixo</h4>
                                						<form action="">
                                							<div  class="form-group row">
                                        						<label class="col-sm-1 col-form-label">Nome:</label>
                                        						<div class="col-sm-4">
                                        							<input type="text" class="form-control"
                                        							placeholder="Ricardão">
                                        						</div>
                                        					</div>
                                        					<div  class="form-group row">
                                        						<label class="col-sm-1 col-form-label">Email:</label>
                                        						<div class="col-sm-4">
                                        							<input type="text" class="form-control"
                                        							placeholder="ricardao@email.com">
                                        						</div>
                                        					</div>
                                        					<div  class="form-group row">
                                        						<label class="col-sm-1 col-form-label">Nome da Vó:</label>
                                        						<div class="col-sm-4">
                                        							<input type="text" class="form-control"
                                        							placeholder="Lirde">
                                        						</div>
                                        					</div>
                                						</form>
                                					</div>
                                				</div>
                                			</div>
                                        </div>
                                    </div>
                                    <!-- Page-body end -->
                                </div>
                                <div id="styleSelector"> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="javascript-file.jsp"></jsp:include>
</body>

</html>
    