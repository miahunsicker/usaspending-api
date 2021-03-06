# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-11-03 19:53
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('awards', '0002_auto_20171101_1314'),
    ]

    operations = [
        migrations.AlterField(
            model_name='transactionfabs',
            name='cfda_number',
            field=models.TextField(blank=True, db_index=True, null=True),
        ),
        migrations.AlterField(
            model_name='transactionfpds',
            name='extent_competed',
            field=models.TextField(blank=True, db_index=True, null=True),
        ),
        migrations.AlterField(
            model_name='transactionfpds',
            name='naics',
            field=models.TextField(blank=True, db_index=True, null=True),
        ),
        migrations.AlterField(
            model_name='transactionfpds',
            name='product_or_service_code',
            field=models.TextField(blank=True, db_index=True, null=True),
        ),
        migrations.AlterField(
            model_name='transactionfpds',
            name='type_of_contract_pricing',
            field=models.TextField(blank=True, db_index=True, null=True),
        ),
        migrations.AlterField(
            model_name='transactionfpds',
            name='type_set_aside',
            field=models.TextField(blank=True, db_index=True, null=True),
        ),
    ]
