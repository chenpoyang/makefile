#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

void *run(void *thrd)
{
	int id;

	id = (int)thrd;
	printf("subthread %d: running...\r\n", id);

	pthread_exit(NULL);
}

int main()
{
	int ret, thrd_id;
	pthread_t thrd;
	pthread_attr_t attr;
	void *status;

	thrd_id = 10;
	status = NULL;
	/* init attribute */
	pthread_attr_init(&attr);
	/* set the the thread to bo joinable */
	pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);
	/* create a subthread and start with argument:thrd_id */
	printf("creating sub thread...\r\n");
	ret = pthread_create(&thrd, &attr, run, (void *)thrd_id);
	if (ret)
	{
		printf("ERROR! return error code from pthread_create(): %d\r\n", ret);
		exit(-1);
	}

	/* destory the attribute */
	pthread_attr_destroy(&attr);

	status = NULL;
	/* waiting for the subthread to finish */
	ret = pthread_join(thrd, &status);
	if (ret)
	{
		printf("ERROR! return error code from pthread_create(): %d\r\n", ret);
		exit(-1);
	}
	printf("Main: completed join with thread %d"
			"having a status of %d\r\n", thrd_id, (int)status);

	printf("Main: completed,Exiting.\r\n");
	pthread_exit(NULL);

	return 0;
}
