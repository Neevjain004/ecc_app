package edu;
class stackds
{
    int size;
    int top=-1;
    int arr[];
    stackds(int size)
    {
        this.size=size;
        arr=new int[size];
    }
    boolean isEmpty()
    {
        return(top==-1);

    }

    boolean isFull()
    {
        return(top==size-1);

    }
    void push(int data)
    {
        if(isFull())
        {
            System.out.println("stack is full");
            return;
        }

        else
        {
            arr[++top]=data;
        }
    }

    int pop()
    {
        if(isEmpty()) {
            System.out.println("stack empty");

            return 0;

        }

        else {
            return arr[top--];
        }
    }
    void display() {
        if(top>-1)

            for(int i=top;i>=0;i--)
            {
                System.out.println("the value is :"+arr[i]);
            }
    }

    int peak()
    {
        return arr[top];
    }

    void delete()
    {
        top=-1;
    }

    public static class mystack {

        public static void main(String[] args)
        {
            // TODO Auto-generated method stub

            stackds st=new stackds(7);

            st.push(4);st.push(6);st.push(8);st.push(1);st.push(4);
            st.display();
        }

    }}
