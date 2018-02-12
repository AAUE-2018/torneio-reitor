<div class="container login">

    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">Login</h3>
                </div>

                  <?php
                  $error_msg= $this->session->flashdata('error_msg');
                  if($error_msg){
                    ?>
                    <div class="alert alert-danger">
                      <?php echo $error_msg; ?>
                    </div>
                  <?php } ?>
 
                <div class="panel-body">
                    <form role="form" method="post" action="<?php echo base_url('index.php/user/login_user'); ?>">
                        <fieldset>
                            <div class="form-group"  >
                                <input class="form-control" placeholder="E-mail" name="user_email" type="email" autofocus>
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Password" name="user_password" type="password" value="">
                            </div>
 
 
                                <input class="btn btn-lg btn-success btn-block" type="submit" value="login" name="login" >
 
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
