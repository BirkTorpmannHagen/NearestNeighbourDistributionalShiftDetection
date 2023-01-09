import seaborn as sns
import pandas as pd
import os
import matplotlib.pyplot as plt
def collate_results_into_df():
    dfs = []
    for size in ["tiny", "small", "medium", "xl"]:
        for fold in ["ind", "ood", "test"]:
            try:
                with open(f"{size}_{fold}_results_filtered.txt") as file:
                    df = pd.read_csv(file, delim_whitespace=True, header=None, names=["class", "images", "instances", "precision", "recall", "AP", "AP50"])
                    df["fold"]=[fold]*len(df)
                    df["model"]=[size]*len(df)
                    dfs.append(df)
            except FileNotFoundError:
                print(f"{size}_{fold}_results_filtered.txt not found, continuing...")
                continue
    merged = pd.concat(dfs,ignore_index=True, axis=0)
    return merged

def barplot():
    df = collate_results_into_df()
    df = df.replace("xl", "Large")
    df =df.replace("medium", "Medium")
    df =df.replace("small", "Small")
    df =df.replace("tiny", "Extra Small")
    df = df[df["class"]=="all"]
    sns.set(rc={'figure.figsize': (10, 4)})
    plot = sns.boxplot(data=df, x="model", y="AP", hue="fold", hue_order=["ind", "test", "ood"])
    plt.tight_layout()
    plt.savefig("generalizability.eps")
    plt.show()
    print("plotted!")


if __name__ == '__main__':
    barplot()