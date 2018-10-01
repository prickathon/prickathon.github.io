;(function() {
    const redirect = sessionStorage.redirect
    delete sessionStorage.redirect
    if (redirect && redirect !== location.href) {
        history.replaceState(null, null, redirect)
    }
})()
  