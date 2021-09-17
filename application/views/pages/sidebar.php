 <?php $url= explode('/',$_SERVER['REQUEST_URI']); ?>
 <nav class="col-lg-2 col-md-3 d-none d-md-block bg-white sidebar">
                        <div class="sidebar-sticky">
                            <br />
                            <h6 id="applicationButton" class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-5 mb-1 text-muted">
                                <a class="text-secondary" href="#"><span>Application</span></a>
                                <a class="d-flex align-items-center text-muted" href="#">
                                    <span id="applicationArrowLeft" data-feather="arrow-left-circle" class="d-none"></span>
                                    <span id="applicationArrowDown" data-feather="arrow-down-circle"></span>
                                </a>
                            </h6>
                            <div id="applicationDiv">
                                <ul class="nav flex-column mb-2">
                                    <li class="nav-item">
                                        <a id="organizationinformation" class="nav-link <?php if(in_array('organizationinformation',$url)){ echo "active"; }?>" href="<?php echo base_url();?>organizationinformation">
                                            <i class="fas fa-sitemap mr-3"></i>
                                            Organization
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a id="primary" class="nav-link <?php if(in_array('primary',$url)){ echo "active"; }?>" href="<?php echo base_url();?>primary">
                                            <i class="fas fa-id-card mr-3"></i>
                                            Main Contact Information
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a id="businessInformation" class="nav-link <?php if(in_array('businessinformation',$url)){ echo "active"; }?>" href="<?php echo base_url();?>businessinformation">
                                            <i class="fas fa-id-card-alt mr-3"></i>
                                            Business Information
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a id="generalQuestions" class="nav-link <?php if(in_array('generalquestions',$url)){ echo "active"; }?>" href="<?php echo base_url();?>generalquestions">
                                            <i class="fas fa-question-circle mr-3"></i>
                                            Entity Questions
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a id="supplierInformation" class="nav-link <?php if(in_array('supplierinformation',$url)){ echo "active"; }?>" href="<?php echo base_url();?>supplierinformation">
                                            <i class="fas fa-address-card mr-3"></i>
                                            Additional Contact Information
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a id="agreements" class="nav-link <?php if(in_array('agreements',$url)){ echo "active"; }?>" href="<?php echo base_url();?>agreements">
                                            <i class="fas fa-file-signature mr-3"></i>
                                            Agreements
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>