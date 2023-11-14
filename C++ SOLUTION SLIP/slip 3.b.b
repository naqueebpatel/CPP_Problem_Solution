#include<iostream>
#include<string.h>
using namespace std;
class person
{
  char pname[20];
  char city[20];
  long int mno;
  public:
  	void accept()
  	{
  		cout<<"ENTER THE PERSON NAME:::"<<endl;
  		cin>>pname;
  		cout<<"ENTER CITY:::"<<endl;
  		cin>>city;
  		cout<<"ENTER THE MOBILE NO:::"<<endl;
  		cin>>mno;
  		
	}
	void display()
	{
	cout<<"THE PERSON NAME IS:::"<<pname<<endl;
	cout<<"THE CITY NAME IS:::"<<city<<endl;
	cout<<"THE MOBIE NO IS:::"<<mno<<endl;
    }
    int search(char m[20])
    {
      	if(strcmp(pname,m)==0)
      	{
      	cout<<"THE MOBILE NO IS:::"<<mno<<endl;
      	return(1);
            }
      	else
      	return(0);
    }
};
int main()
{
	int i,n,k;
	char m[20];
	cout<<"ENTER NO OF DETAILS"<<endl;
	cin>>n;
	person obj[n];
	for(i=0;i<n;i++)
	{
		obj[i].accept();
	}
	for(i=0;i<n;i++)
	{
		obj[i].display();
	}
	cout<<"ENTER THE NAME TO SEARCH MOBILE NO"<<endl;
	cin>>m;
	for(i=0;i<n;i++)
	{
	  k=obj[i].search(m);
	  if(k==1)
	  break;	
	}
	if(k==0)
	cout<<"MOBILE NO NOT FOUND"<<endl;
}