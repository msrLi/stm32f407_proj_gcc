SUBDIRS = cmsi stm32_driver system_entry
all:
	for i in $(SUBDIRS);do \
        echo "Build $$i...."; ($(MAKE) -C $$i); \
        if [ $$? != 0 ] ; then \
            exit 1; \
        fi; \
    done
clean:
	for i in $(SUBDIRS);do \
        echo "Build $$i...."; rm -rf $$i/build; ($(MAKE) -C $$i clean); \
    done
