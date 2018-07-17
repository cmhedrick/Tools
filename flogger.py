from datetime import datetime
import os

class flogger:
    def __init__(self, file_name='flogger.txt', stdout=False):
        """
        create flogger instance
        """
        self.file_name = file_name
        self.file = open(self.file_name, 'a')
        self.stdout = stdout

    def write_buff(self):
        self.file.flush()
        os.fsync(self.file.fileno())

    def success(self, text):
        """
        log successes
        """
        msg = '[+] {0} - {1}\n'.format(
            datetime.now(),
            text
        )
        self.file.write(msg)
        self.write_buff()
        if self.stdout:
            print(msg)      

    def info(self, text):
        """
        log info
        """
        msg = '[-] {0} - {1}\n'.format(
            datetime.now(),
            text
        )
        self.file.write(msg)
        self.write_buff()
        if self.stdout:
            print(msg)      

    def warning(self, text):
        """
        log warnings
        """
        msg = '[*] {0} - {1}\n'.format(
            datetime.now(),
            text
        )
        self.file.write(msg)
        self.write_buff()
        if self.stdout:
            print(msg)      

    def error(self, text):
        """
        log errors
        """
        msg = '[!] {0} - {1}\n'.format(
            datetime.now(),
            text
        )
        self.file.write(msg)
        self.write_buff()
        if self.stdout:
            print(msg)      

if __name__ == '__main__':
    flogger = flogger(stdout=True,file_name="test.txt")
    flogger.info("Testing info")
    flogger.warning("Don't worry just a warning...")
    flogger.error("THE SKY IS FALLING PANIC")
    flogger.success("Everything is going great :3")
    flogger.file.close()
    print(flogger.file_name)