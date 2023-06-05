<?php
    include 'head.php';
?>
<!-- Start Header -->
<div class="signin-header">
            <div class="row align-items-center">
                <div class="col-md-6">
                </div>
                <div class="col-md-6">
                    <div class="singin-header-btn">
                        <a href="index.php?act=login" class="axil-btn btn-bg-secondary sign-up-btn">Sign In</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Header -->
        <div  style="margin-top: 50px;">
            <div class="col-lg-6 offset-xl-3">
                        <div style="text-align: center; margin-bottom: 30px;">
                            <h3 class="title">I'm New Here</h3>
                            <p class="b2 mb--55">Enter your detail below</p>
                        </div>
                        <form action="index.php?act=insert_client_user" method="POST"class="singin-form">
                            <div class="form-group">
                                <label>Last Name</label>
                                <input placeholder="Last name" type="text" class="form-control" name="last_name_c">
                            </div>
                            <!-- 3 -->
                            <div class="form-group">
                                <label>First name</label>
                                <input placeholder="First name" type="text" class="form-control" name="first_name_c">
                            </div>
                            <!-- 4 -->
                            <div class="form-group">
                                <label>Sex</label>
                                <select style="height: 50px;" name="sex_c" id="">
                                    <option value="0">Choose Sex</option>
                                    <option value="1">Male</option>
                                    <option value="2">Female</option>
                                    <option value="3">Other</option>
                                </select>
                            </div>
                            <!-- 5 -->
                            <div class="form-group">
                                <label>Email</label>
                                <input placeholder="Please enter your email"  type="email" class="form-control" name="email_c">
                            </div>
                            <!-- 6 -->
                            <div class="form-group">
                                <label>Phone</label>
                                <input placeholder="Please enter your phone" type="text" class="form-control" name="phone_c">
                            </div>
                            <!-- 7 -->
                            <div class="form-group">
                                <label>User Name</label>
                                <input placeholder="Username" type="text" class="form-control" name="user_c">
                            </div>
                            <!-- 8 -->
                            <div class="form-group">
                                <label>Password</label>
                                <input placeholder="Password" type="password" class="form-control" name="password_c">
                            </div>
                            <div class="form-group">
                                <input type="submit" class="form-control" name="submit">
                            </div>
                            <?php
                                if(isset($txt_erro)&&($txt_erro!=""))
                                {
                                echo "<font color='red'>".$txt_erro."</font>";
                                }
                            ?>
                        </form> 
                    </div>
            </div>
        </div>
    </div>