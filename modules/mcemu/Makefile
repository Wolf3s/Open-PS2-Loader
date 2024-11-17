IOP_OBJS = mcemu.o mcemu_io.o mcemu_sys.o mcemu_var.o mcemu_rpc.o imports.o

IOP_BIN  = mcemu.irx

ifeq ($(USE_HDD),1)
IOP_OBJS += device-hdd.o
IOP_CFLAGS += -DHDD_DRIVER
endif

ifeq ($(USE_SMB),1)
IOP_OBJS += device-smb.o
IOP_CFLAGS += -DSMB_DRIVER
endif

ifeq ($(USE_BDM),1)
IOP_OBJS += device-bdm.o
IOP_CFLAGS += -DBDM_DRIVER
endif

ifeq ($(IOPCORE_DEBUG),1)
IOP_CFLAGS += -DDEBUG
endif

ifeq ($(PADEMU),1)
IOP_CFLAGS += -DPADEMU
endif

include $(PS2SDK)/Defs.make
include ../Rules.bin.make
include $(PS2SDK)/samples/Makefile.iopglobal
