# Despliegue con Terraform y Ansible

Este repositorio contiene un muy simple despliegue con Terraform y Ansible.
##
El stack son 3 instancias, un servidor de Prometheus, un servidor de Grafana y un agente Node Exporter.

## Contenidos

- **./**: Contiene los archivos de configuración de Terraform para crear las instancias EC2.
- **roles/**: Incluye los roles de Ansible con los tasks necesarios para aprovisionar las instancias EC2.
- **despliegue.sh**: Script principal que orquesta el despliegue, ejecutando Terraform para crear las instancias y luego Ansible para la configuración.

##

Asegúrate de tener lo siguiente antes de ejecutar el despliegue:

- Credenciales de corta duracion de AWS.
- Terraform: [Instalación de Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- Ansible: [Instalación de Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

## Instrucciones

1. Obtener las credenciales de corta duracion.
2. Configurar perfil a usar por AWS.
3. Clonar repositorio.
4. Instalar Terraform y Ansible.
5. Anadir parametros de configuracion al playbook al gusto.
6. Iniciar el despliegue con:

    ```bash
    cd metrics-deployment
    ./despliegue.sh
    ```

7. Terminar la configuracion de Prometheus y Grafana.

## TO-DO

- [ ] Deteccion y configuracion automatica de agentes de Prometheus con Terraform.
- [ ] Buscar manera de prescindir del script de inicio.