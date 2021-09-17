<!DOCTYPE html>
<html lang="en">
    <title>Top-Wiz-Cash</title>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="<?php echo base_url();?>assets/css/faq/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <section class = "FAQ-Banner">
            <div class = "container">
                <div class = "Banner-Heading">
                    <h1 class = "heading-title">CONTACT</h1>
                </div>
            </div>
        </section>
        <section class="contact-page">
            <div class = "container">
                <div class = "row">
                    <div class = "col-6">
                        <div class = "contact-details">
                            <h2>contact us:</h2>
                            <div class="details-box">
                                <h4>address:</h4>
                                <p>plot No. 233/243<br/>Techno IT Park<br>
                                    Panchkula , India
                                </p>
                            </div>
                            <div class="details-box">
                                <h4>Email:</h4>
                                <a href = "#" >info@oxeenIt.com</a>
                            </div>
                            <div class="details-box">
                                <h4>Phone Numbers:</h4>
                                <p>Mobile No. : 0099993322</p>
                                <p>Phone No. : 01111-9993322</p>
                            </div>
                        </div>
                    </div>
                    <div class = "col-6">
                        <div class="contact-form">
                          <input type="hidden" name="baseURL" id="baseURL" value="<?php echo base_url();?>" >
                          <div class="alert alert-success" id="contact-id" style="display:none;">Your information has been sent successfully.Admin can contact shortly as soon as possible .</div>
                        <form id="contactForm1"  action="#" method="post" role="form" novalidate="">


                            <div class = "form-heading">
                                <h2>send your queary</h2>
                            </div>
                            <div class="mb-3">
                                <input type="text" class="form-control" name="first_name"  placeholder="First Name" required />    
                              </div>
                               <div class="mb-3">
                                <input type="text" class="form-control" name="last_name"  placeholder="Last  Name" required />    
                              </div>
                              <div class="mb-3">
                                  
                                   <input type="email" class="form-control" name="email"   placeholder="name@example.com" required  />
                                </div>
                                <div class="mb-3">
                                    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Phone Number" name="phone" required maxlength="10">
                                  </div>
                              <div class="mb-3">
                                <textarea class="form-control" name="message" rows="5" required ></textarea>
                              </div>
                              <div class = "submit">
                                  
                                  <input type="submit" class="btn btn-success" value="Send Message">
                              </div>
                              </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer class = "top-wiz-footer">
            <?php $this->load->view('templates/footer');?>
        </footer>
    </body>
</html>    