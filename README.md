# NAME

WWW::ModulrFinance - Modulr API

# SYNOPSIS

    use WWW::ModulrFinance;

    my $modulr = WWW::ModulrFinance->new(
        api_key => $ENV{MODULR_APIKEY},
        hmac_secret => $ENV{MODULR_HMAC_SECRET},
    );

    my $res = $modulr->get_accounts;
    say Dumper(\$res);

# DESCRIPTION

WWW::ModulrFinance is for [https://modulr-technology-ltd.cloud.tyk.io/portal/api-overview/](https://modulr-technology-ltd.cloud.tyk.io/portal/api-overview/)

# METHODS

- get\_accounts
- get\_account($id)
- update\_account($id, $data)
- get\_customer\_accounts($cid)
- create\_customer\_account($cid, $data)
- get\_transactions($id, { size => 100, ... })
- get\_payments
- post\_payments
- post\_batchpayments
- get\_batchpayment($id)

# AUTHOR

Fayland Lam <fayland@gmail.com>

# COPYRIGHT

Copyright 2016- Fayland Lam

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO
