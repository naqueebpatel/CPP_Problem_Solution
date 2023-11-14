#include<iostream>
#include<string.h>
using namespace std;
class person
{
	char pname[10];
	char city[10];
	string mob;
	public:
		void accept()
		{
			cout<<"ENTER PERSON NAME,CITY AND MOBILE NO."<<endl;
			cin>>pname>>city>>mob;
		}
		void display()
		{
			cout<<"PERSON NAME IS:::"<<pname<<endl;
			cout<<"CITY IS:::"<<city<<endl;
			cout<<"MOBILE NO IS:::"<<mob<<endl;	
		}
		void searchmob(char name[10])
		{
			if(strcmp(pname,name)==0)
			{
				cout<<"MOBILE NO FOUND!!"<<endl;
			cout<<"THE MOBILE NO IS:::"<<mob<<endl;
		    }
		   else
		   {
		   cout<<"MOBILE NO NOT FOUND!!!"<<endl;
	}
    	}
};
int main()
{
int n;
cout<<"ENTER THE NO OF DETAILS TO ENTER"<<endl;
cin>>n;
	person p[n];
	int i;
	for(i=0;i<n;i++)
	{
		p[i].accept();
	}
	i=0;
	for(i=0;i<n;i++)
	{
		p[i].display();
	}
	char k[10];
	cout<<"ENTER THE PERSON NAME TO SEARCH MOBILE NUMBER"<<	endl;
	cin>>k;
		for(i=0;i<n;i++)
		{
			p[i].searchmob(k);
		}
}