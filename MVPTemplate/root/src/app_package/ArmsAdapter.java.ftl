package ${adapterPackageName};

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import ${adapterPackageName}.base.BaseRecyAdapter;

import ${packageName}.R;
import butterknife.BindView;
import butterknife.ButterKnife;


public class ${pageName}Adapter extends BaseRecyAdapter<Object>{
    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.${adapterLayoutName} , parent, false);
        return new ${pageName}Adapter.ItemViewHolder(view);
    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        ItemViewHolder itemViewHolder = (ItemViewHolder) holder;
    }

    class ItemViewHolder extends RecyclerView.ViewHolder {


        public ItemViewHolder(@NonNull View itemView) {
            super(itemView);
            ButterKnife.bind(this, itemView);
        }
    }
}
