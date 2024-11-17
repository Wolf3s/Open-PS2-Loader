typedef struct devfunc
{
    int (*DeviceWritePage)(int mc_num, void *buf, u32 page_num);
    int (*DeviceReadPage)(int mc_num, void *buf, u32 page_num);
    void (*DeviceShutdown)(void);
} devfunc;


extern devfunc mcemu_bdm;

extern devfunc mcemu_hdd;

extern devfunc mcemu_smb;