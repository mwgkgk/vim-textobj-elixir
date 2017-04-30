defmodule Test1 do

  def normal_function do
    x = 1
  end

  def normal_function_with_blank do
    x = 1

    y = 1
  end

  defp private_function do
    x = 1
  end

  def empty_function do

  end

  it empty_function do

  end

  test "empty test" do
  
  end

  describe "empty description" do
    
  end

end
