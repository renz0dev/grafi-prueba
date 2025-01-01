# Generated by Django 5.1.3 on 2024-12-01 09:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inventory', '0006_alter_technicalservice_options_and_more'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='technicalservice',
            options={'ordering': ['-created_at']},
        ),
        migrations.RemoveField(
            model_name='technicalservice',
            name='parts',
        ),
        migrations.AlterField(
            model_name='technicalservice',
            name='created_at',
            field=models.DateTimeField(auto_now_add=True),
        ),
    ]
