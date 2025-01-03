# Generated by Django 5.1.3 on 2024-12-01 10:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inventory', '0008_alter_technicalservice_options_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='technicalservice',
            name='client_name',
            field=models.CharField(default='Cliente Desconocido', max_length=200, verbose_name='Nombre del Cliente'),
        ),
        migrations.AlterField(
            model_name='technicalservice',
            name='description',
            field=models.TextField(verbose_name='Descripción/Detalles'),
        ),
        migrations.AlterField(
            model_name='technicalservice',
            name='parts',
            field=models.ManyToManyField(blank=True, related_name='services', to='inventory.product'),
        ),
        migrations.AlterField(
            model_name='technicalservice',
            name='service_name',
            field=models.CharField(max_length=200, verbose_name='Nombre del Servicio'),
        ),
        migrations.AlterField(
            model_name='technicalservice',
            name='status',
            field=models.CharField(choices=[('registered', 'Registrado'), ('in_progress', 'En Curso'), ('completed', 'Terminado')], default='registered', max_length=20, verbose_name='Estado'),
        ),
    ]
