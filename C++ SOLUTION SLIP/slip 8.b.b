#include<iostream>
#include<string.h>
using namespace std;
class part
{
	int pid;
	char pname[20];
	int pri;
	public:
		/*part()
		{
			pid=254;
			strcpy(pname,"engine");
			pri=3500;
		}*/
		part(int a,char b[],int c)
		{
			pid=a;
			strcpy(pname,b);
			pri=c;
		}
		part(part &pt)
		{
			pid=pt.pid;
			strcpy(pname,pt.pname);
			pri=pt.pri;
		}
		
		void display()
		{
			cout<<"THE PART ID IS:::"<<pid<<endl;
			cout<<"THE PART NAME IS:::"<<pname<<endl;
			cout<<"THE PRICE IS:::"<<pri<<endl;
		}
};
int main()
{
	int pid;
	char pname[20];
	int pri;
	cout<<"ENTER PART ID,PNAME AND PRICE"<<endl;
	cin>>pid>>pname>>pri;
	//part p1;
	part p2(pid,pname,pri);
	part p3(p2);
		//p1.display();
		p2.display();
		p3.display();		
}