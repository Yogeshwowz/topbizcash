document.addEventListener('DOMContentLoaded', function (e) {


    const fv = FormValidation.formValidation(
        document.getElementById('registerForm'), {
            fields: {

                first_name: {
                    validators: {
                        notEmpty: {
                            message: 'You must enter your first name'
                        },
                        stringLength: {
                            max: 100,
                            message: 'Must be less than 100 characters'
                        }
                    }
                },
                last_name: {
                    validators: {
                        notEmpty: {
                            message: 'You must enter your last name'
                        },
                        stringLength: {
                            max: 100,
                            message: 'Must be less than 100 characters'
                        }
                    }
                },
                email: {
                    validators: {
                        notEmpty: {
                            message: 'You must enter your email'
                        },
                        stringLength: {
                            max: 100,
                            message: 'Must be less than 100 characters'
                        },
                        emailAddress: {
                            message: 'The value is not a valid email address'
                        },
                    }
                },
                state: {
                    validators: {
                        notEmpty: {
                            message: 'You must enter your email'
                        },
                        stringLength: {
                            max: 100,
                            message: 'Must be less than 100 characters'
                        },
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: 'You must enter your password'
                        },
                        stringLength: {
                            max: 100,
                            message: 'Must be less than 100 characters'
                        }
                    }
                },
                'password_confirmation': {
                    validators: {
                        notEmpty: {
                            message: 'You must enter your password again'
                        },
                        stringLength: {
                            max: 100,
                            message: 'Must be less than 100 characters'
                        },
                        identical: {
                            compare: function () {
                                return registerForm.querySelector('[name="password"]').value;
                            },
                            message: 'The password and its confirm are not the same'
                        },
                    }
                },
                expedite: {
                    validators: {
                        notEmpty: {
                            message: 'You must select yes or no'
                        },
                        stringLength: {
                            max: 100,
                            message: 'Must be less than 100 characters'
                        }
                    }
                },
                agreeTerms: {
                    validators: {
                        notEmpty: {
                            message: 'You must agree to terms of service'
                        },
                        stringLength: {
                            max: 100,
                            message: 'Must be less than 100 characters'
                        }
                    }
                },

            },
            plugins: {
                trigger: new FormValidation.plugins.Trigger(),
                bootstrap: new FormValidation.plugins.Bootstrap(),
                excluded: new FormValidation.plugins.Excluded(),
                autoFocus: new FormValidation.plugins.AutoFocus(),
                submitButton: new FormValidation.plugins.SubmitButton(),
                defaultSubmit: new FormValidation.plugins.DefaultSubmit(),
            },
        }
    );


    /*$('#subscribed').on('change', function () {
        this.value = this.checked ? 1 : 0;
        alert(this.value);
    }).change();*/

    $('input[name="subscribed"]').prop('checked', true);


    $('a[href*="#"]')
        .not('[href="#"]')
        .not('[href="#0"]')
        .click(function (event) {
            if (
                location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') &&
                location.hostname == this.hostname
            ) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.has.slice(1) + ']');
                if (target.length) {
                    event.preventDefault();
                    $('html, body').animate({
                        scrollTop: target.offset().top
                    }, 1000, function () {
                        var $target = $(target);
                        $target.focus();
                        if ($target.is(":focus")) {
                            return false;
                        } else {
                            $target.attr('tabindex', '-1');
                            $target.focus();
                        };
                    });
                }
            }
        });
});
document.addEventListener('DOMContentLoaded', function (e) {

  var applicationClick = localStorage.getItem("applicationClick") === null ? 1 : localStorage.getItem("applicationClick");
  $("#applicationButton").click(function () {
    if (applicationClick == 1) {
      $('#applicationDiv').addClass('d-none');
      $('#applicationArrowLeft').removeClass('d-none');
      $('#applicationArrowDown').addClass('d-none');
      applicationClick = 0;
    } else {
      $('#applicationDiv').removeClass('d-none');
      $('#applicationArrowLeft').addClass('d-none');
      $('#applicationArrowDown').removeClass('d-none');
      applicationClick = 1;
    }
    localStorage.setItem("applicationClick", applicationClick);
  });

});