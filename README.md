# Try function

Here is a sample on how the [`try`](https://www.terraform.io/language/functions/try) function can be used.

This Terraform code know 1 variable: `capitol`. The default is set to Amsterdam.

In the [`locals`](https://www.terraform.io/language/values/locals) a mapping is created, relating a capitol to a country. And the local `country` is defined by looking into this mapping. When a country is not found, the capitol "others" is used.

An extra function [`lower`](https://www.terraform.io/language/functions/lower) is used to change any upper case character to a lower case character.

The output of this Terraform code is a `country`.
