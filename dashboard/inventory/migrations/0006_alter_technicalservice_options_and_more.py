# Generated by Django 5.1.3 on 2024-12-01 08:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inventory', '0005_technicalservice'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='technicalservice',
            options={},
        ),
        migrations.AlterField(
            model_name='technicalservice',
            name='description',
            field=models.TextField(),
        ),
        migrations.AlterField(
            model_name='technicalservice',
            name='parts',
            field=models.ManyToManyField(blank=True, to='inventory.product'),
        ),
        migrations.AlterField(
            model_name='technicalservice',
            name='service_name',
            field=models.CharField(max_length=200),
        ),
        migrations.AlterField(
            model_name='technicalservice',
            name='status',
            field=models.CharField(choices=[('registered', 'Registrado'), ('in_progress', 'En Curso'), ('completed', 'Terminado')], default='registered', max_length=20),
        ),
    ]
