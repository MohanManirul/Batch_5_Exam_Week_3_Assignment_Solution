<?php
  
namespace App\Http\Controllers;
  
use App\Models\Product;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\View\View;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;
class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return response()
     */
    public function index(Request $request): View
    {
     
        $sortBy = $request->get('sortBy', 'name'); // Default sorting by name

          // Check for sort query parameter and apply sorting
        $sortOrder = $request->get('sort', 'asc'); // Default sort is ascending
        if ($sortOrder === 'desc') {
            $sortOrder = 'desc';
        } else {
            $sortOrder = 'asc';
        }

        $products = Product::orderBy($sortBy, $sortOrder)->latest()->paginate(5);
        
        return view('products.index',compact('products'))
                    ->with('i', (request()->input('page', 1) - 1) * 5);
    }
  
    /**
     * Show the form for creating a new resource.
     */
    public function create(): View
    {
        return view('products.create');
    }
  
    /**
     * Store a newly created resource in storage.
     */
  

        public function store(Request $request)
        { 
            $request->validate([
                'name' => 'required|string',           
                'price' => 'required|numeric|min:0',
                'stock' => 'required|numeric|min:0',
                'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            ]);
            
            $input = $request->all(); // শুধুমাত্র প্রয়োজনীয় ইনপুট

            // ইউনিক product_id তৈরি
            $input['product_id'] = Str::slug($request->input('name')) ."-". rand(1000, 9999);

            // ইমেজ প্রসেসিং
            if ($image = $request->file('image')) {
                $destinationPath = public_path('images/');
                $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
                $image->move($destinationPath, $profileImage);
                $input['image'] = "$profileImage";
            }

            // ডেটা সেভ করুন
            Product::create($input);

            return redirect()->route('products.index')
                            ->with('success', 'Product created successfully.');
        }

  
    /**
     * Display the specified resource.
     */
    public function show( Product $product ): View
    {
       
        return view('products.show', compact('product'));
    }
  
    /**
     * Show the form for editing the specified resource.
     */
    public function edit( Product $product ): View
    {       
        return view('products.edit', compact('product'));
    }
  
    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Product $product): RedirectResponse
    {
    
        $request->validate([
            'name' => 'required|string',           
            'price' => 'required|numeric|min:0'                       
        ]);
        
  
        $input = $request->all();
        
        if ($image = $request->file('image')) {
            // Check if the product already has an image and delete it if it exists
            if ($product->image && File::exists('images/' . $product->image)) {
                File::delete('images/' . $product->image);
            }
        
            // Move the new image to the destination path
            $destinationPath = 'images/';
            $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $input['image'] = $profileImage;
        } else {
            unset($input['image']);
        }
        
        $product->update($input);
        
        return redirect()->route('products.index')
                         ->with('success', 'Product updated successfully');
        
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product): RedirectResponse
    {
        if ($product->image && File::exists('images/' . $product->image)) {
            File::delete('images/' . $product->image);
        }
        $product->delete();
         
        return redirect()->route('products.index')
                         ->with('success', 'Product deleted successfully');
    }

    // search query
    public function search(Request $request)
    {
        $query = $request->input('query');
        
        // Perform the search
        $products = Product::where('name', 'LIKE', "%{$query}%")
                           ->orWhere('product_id', 'LIKE', "%{$query}%")
                           
                        //    ->orWhere('price', 'LIKE', "%{$query}%")
                            ->orWhere('price', '=', $query)
                        
                           ->orWhere('detail', 'LIKE', "%{$query}%")
                           ->get();
    
        // Return a partial view with only the table rows
        return view('products.partials.product_rows', compact('products'));
    }
    


}