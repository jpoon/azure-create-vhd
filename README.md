# azure-create-vhd

Docker image to create a blank VHD on Microsoft Azure

## Background

The Azure CLI currently does not supporting creating a blank VHD ([azure-cli#655](https://github.com/Azure/azure-cli/issues/655)). 
A co-worker figured out a [workaround](http://blog.stevenedouard.com/create-a-blank-azure-vm-disk-vhd-without-attaching-it/), and this project serves to wrap that solution into a nice and tidy Docker image. 

## Usage

```
docker run -it jpoon/azure-create-vhd STORAGE_ACCOUNT_NAME STORAGE_ACCOUNT_KEY CONTAINER_NAME VHD_NAME [VHD_SIZE]
```

* STORAGE_ACCOUNT_NAME - Azure Storage Account Name
* STORAGE_ACCOUNT_KEY - Azure Storage Account Key
* CONTAINER_NAME - Name of Blob Container to store VHD
* VHD_NAME - Name of VHD to create (must end in .vhd extension)
* VHD_SIZE - Optional parameter denoting the size of VHD to create
