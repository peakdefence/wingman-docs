# Quick Start Guide

This guide will help you get started with WINGMAN quickly. Follow these steps to set up and start using WINGMAN in your environment.

## Prerequisites

Before you begin, ensure you have:

- A server meeting the [system requirements](#system-requirements)
- Administrator access to the server
- A modern web browser (Chrome, Firefox, Safari, or Edge)
- Required ports open in your firewall

## System Requirements

### Server Requirements

| Component | Minimum | Recommended |
|-----------|---------|-------------|
| CPU | 4 cores | 8+ cores |
| RAM | 8GB | 16GB+ |
| Storage | 50GB | 100GB+ SSD |
| OS | Ubuntu 20.04 LTS | Ubuntu 22.04 LTS |
| Database | PostgreSQL 13 | PostgreSQL 14+ |
| Web Server | Nginx 1.18+ | Nginx 1.22+ |

### Browser Requirements

- Google Chrome (latest 2 versions)
- Mozilla Firefox (latest 2 versions)
- Apple Safari (latest 2 versions)
- Microsoft Edge (latest 2 versions)

## Installation

### 1. Download WINGMAN

Download the latest WINGMAN package from our [downloads page](https://wingman.peakdefence.com/downloads).

```bash
wget https://wingman.peakdefence.com/downloads/wingman-latest.tar.gz
tar -xzvf wingman-latest.tar.gz
cd wingman
```

### 2. Install Dependencies

Install the required system dependencies:

```bash
# For Ubuntu/Debian
sudo apt-get update
sudo apt-get install -y python3-pip python3-venv nginx postgresql postgresql-contrib

# For RHEL/CentOS
sudo yum install -y python3-pip python3-venv nginx postgresql postgresql-server
```

### 3. Set Up Virtual Environment

```bash
python3 -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install --upgrade pip
pip install -r requirements.txt
```

### 4. Configure Environment

Copy the example environment file and update it with your settings:

```bash
cp .env.example .env
nano .env  # Edit the configuration
```

### 5. Initialize Database

```bash
python manage.py migrate
python manage.py createsuperuser
python manage.py loaddata initial_data.json
```

### 6. Start the Development Server

```bash
python manage.py runserver
```

Visit `http://localhost:8000` in your web browser to access WINGMAN.

## Initial Configuration

### 1. Log In

1. Open your web browser and navigate to your WINGMAN instance
2. Log in with the superuser credentials you created

### 2. Configure Organization

1. Navigate to **Admin > Organizations**
2. Click **Add Organization**
3. Enter your organization details
4. Save the organization

### 3. Set Up Users

1. Navigate to **Admin > Users**
2. Click **Add User**
3. Fill in user details and assign roles
4. Send invitation to the user's email

### 4. Import Initial Data

1. Navigate to **Data > Import**
2. Select the type of data to import (Assets, Controls, etc.)
3. Upload your CSV file or use the template
4. Map the fields and complete the import

## Next Steps

- [Explore the User Interface](../usage/ui-guide.md)
- [Learn about Core Concepts](../core-concepts/graph-database.md)
- [Set Up Integrations](../integrations/overview.md)

## Troubleshooting

### Common Issues

**Issue**: Database connection failed  
**Solution**: Verify your database settings in `.env` and ensure the database server is running

**Issue**: Static files not loading  
**Solution**: Run `python manage.py collectstatic` and ensure your web server is configured correctly

**Issue**: Email not sending  
**Solution**: Check your email settings in `.env` and verify your SMTP server configuration

## Getting Help

If you encounter any issues during installation or setup:

1. Check the [Troubleshooting](#troubleshooting) section above
2. Search our [Knowledge Base](https://support.peakdefence.com)
3. Contact our [Support Team](mailto:support@peakdefence.com)
