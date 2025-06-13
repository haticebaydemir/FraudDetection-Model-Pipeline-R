{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "c4b1ab3b",
   "metadata": {
    "papermill": {
     "duration": 0.004465,
     "end_time": "2025-06-13T18:14:50.938513",
     "exception": false,
     "start_time": "2025-06-13T18:14:50.934048",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 1. Gerekli Paketlerin Yüklenmesi ve Ayarlar"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "cd8ed035",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-06-13T18:14:50.950027Z",
     "iopub.status.busy": "2025-06-13T18:14:50.947974Z",
     "iopub.status.idle": "2025-06-13T18:14:57.046200Z",
     "shell.execute_reply": "2025-06-13T18:14:57.044172Z"
    },
    "papermill": {
     "duration": 6.106289,
     "end_time": "2025-06-13T18:14:57.048616",
     "exception": false,
     "start_time": "2025-06-13T18:14:50.942327",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Loading required package: tidyverse\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdplyr    \u001b[39m 1.1.4     \u001b[32m✔\u001b[39m \u001b[34mreadr    \u001b[39m 2.1.5\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats  \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mstringr  \u001b[39m 1.5.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2  \u001b[39m 3.5.1     \u001b[32m✔\u001b[39m \u001b[34mtibble   \u001b[39m 3.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mlubridate\u001b[39m 1.9.3     \u001b[32m✔\u001b[39m \u001b[34mtidyr    \u001b[39m 1.3.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr    \u001b[39m 1.0.2     \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Loading required package: caret\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Loading required package: lattice\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘caret’\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following object is masked from ‘package:purrr’:\n",
      "\n",
      "    lift\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following object is masked from ‘package:httr’:\n",
      "\n",
      "    progress\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Loading required package: smotefamily\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Loading required package: rsample\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Loading required package: recipes\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘recipes’\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following object is masked from ‘package:stringr’:\n",
      "\n",
      "    fixed\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following object is masked from ‘package:stats’:\n",
      "\n",
      "    step\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Loading required package: randomForest\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "randomForest 4.7-1.1\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Type rfNews() to see new features/changes/bug fixes.\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘randomForest’\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following object is masked from ‘package:dplyr’:\n",
      "\n",
      "    combine\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following object is masked from ‘package:ggplot2’:\n",
      "\n",
      "    margin\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Loading required package: xgboost\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘xgboost’\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following object is masked from ‘package:dplyr’:\n",
      "\n",
      "    slice\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Loading required package: pROC\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Type 'citation(\"pROC\")' for a citation.\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘pROC’\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following objects are masked from ‘package:stats’:\n",
      "\n",
      "    cov, smooth, var\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Loading required package: doParallel\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Loading required package: foreach\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘foreach’\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following objects are masked from ‘package:purrr’:\n",
      "\n",
      "    accumulate, when\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Loading required package: iterators\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Loading required package: parallel\n",
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Paralel işlem için kullanılacak çekirdek sayısı: 3 \n"
     ]
    }
   ],
   "source": [
    "# Gerekli paketleri otomatik yükleme ve kütüphaneye alma fonksiyonu\n",
    "install_and_load <- function(packages) {\n",
    "  invisible(lapply(packages, function(pkg) {\n",
    "    if (!require(pkg, character.only = TRUE)) {\n",
    "      install.packages(pkg, dependencies = TRUE)\n",
    "      library(pkg, character.only = TRUE)\n",
    "    }\n",
    "  }))\n",
    "}\n",
    "\n",
    "# Kullanacağımız paketler\n",
    "packages <- c(\n",
    "  \"tidyverse\",     # Veri manipülasyonu ve görselleştirme\n",
    "  \"caret\",         # Model eğitimi ve doğrulama\n",
    "  \"smotefamily\",   # SMOTE ile dengesiz veri dengeleme\n",
    "  \"rsample\",       # Veri setini eğitim-test olarak bölme\n",
    "  \"recipes\",       # Veri ön işleme pipeline\n",
    "  \"randomForest\",  # Random Forest modeli\n",
    "  \"xgboost\",       # XGBoost modeli\n",
    "  \"pROC\",          # ROC eğrisi ve AUC hesaplama\n",
    "  \"doParallel\"     # Paralel işlem hızlandırma\n",
    ")\n",
    "\n",
    "# Paketleri yükle ve çağır\n",
    "install_and_load(packages)\n",
    "\n",
    "# Paralel işlem ayarları (CPU çekirdeği sayısına göre)\n",
    "library(doParallel)\n",
    "cores <- parallel::detectCores() - 1\n",
    "cl <- makeCluster(cores)\n",
    "registerDoParallel(cl)\n",
    "cat(\"Paralel işlem için kullanılacak çekirdek sayısı:\", cores, \"\\n\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c96acfc8",
   "metadata": {
    "papermill": {
     "duration": 0.005293,
     "end_time": "2025-06-13T18:14:57.059907",
     "exception": false,
     "start_time": "2025-06-13T18:14:57.054614",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 2. Veri Yükleme ve İlk İnceleme ###"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "65b86b46",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-06-13T18:14:57.103750Z",
     "iopub.status.busy": "2025-06-13T18:14:57.072589Z",
     "iopub.status.idle": "2025-06-13T18:14:59.688130Z",
     "shell.execute_reply": "2025-06-13T18:14:59.686032Z"
    },
    "papermill": {
     "duration": 2.625655,
     "end_time": "2025-06-13T18:14:59.690893",
     "exception": false,
     "start_time": "2025-06-13T18:14:57.065238",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 6 × 31\u001b[39m\n",
      "   Time     V1      V2    V3     V4      V5      V6      V7      V8     V9\n",
      "  \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m  \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m   \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m  \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m   \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m   \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m   \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m   \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m  \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m\n",
      "\u001b[90m1\u001b[39m     0 -\u001b[31m1\u001b[39m\u001b[31m.\u001b[39m\u001b[31m36\u001b[39m  -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m0\u001b[39m\u001b[31m72\u001b[4m8\u001b[24m\u001b[39m 2.54   1.38  -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m338\u001b[39m   0.462   0.240   0.098\u001b[4m7\u001b[24m  0.364\n",
      "\u001b[90m2\u001b[39m     0  1.19   0.266  0.166  0.448  0.060\u001b[4m0\u001b[24m -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m0\u001b[39m\u001b[31m82\u001b[4m4\u001b[24m\u001b[39m -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m0\u001b[39m\u001b[31m78\u001b[4m8\u001b[24m\u001b[39m  0.085\u001b[4m1\u001b[24m -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m255\u001b[39m\n",
      "\u001b[90m3\u001b[39m     1 -\u001b[31m1\u001b[39m\u001b[31m.\u001b[39m\u001b[31m36\u001b[39m  -\u001b[31m1\u001b[39m\u001b[31m.\u001b[39m\u001b[31m34\u001b[39m   1.77   0.380 -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m503\u001b[39m   1.80    0.791   0.248  -\u001b[31m1\u001b[39m\u001b[31m.\u001b[39m\u001b[31m51\u001b[39m \n",
      "\u001b[90m4\u001b[39m     1 -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m966\u001b[39m -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m185\u001b[39m  1.79  -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m863\u001b[39m -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m0\u001b[39m\u001b[31m10\u001b[4m3\u001b[24m\u001b[39m  1.25    0.238   0.377  -\u001b[31m1\u001b[39m\u001b[31m.\u001b[39m\u001b[31m39\u001b[39m \n",
      "\u001b[90m5\u001b[39m     2 -\u001b[31m1\u001b[39m\u001b[31m.\u001b[39m\u001b[31m16\u001b[39m   0.878  1.55   0.403 -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m407\u001b[39m   0.095\u001b[4m9\u001b[24m  0.593  -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m271\u001b[39m   0.818\n",
      "\u001b[90m6\u001b[39m     2 -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m426\u001b[39m  0.961  1.14  -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m168\u001b[39m  0.421  -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m0\u001b[39m\u001b[31m29\u001b[4m7\u001b[24m\u001b[39m  0.476   0.260  -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m569\u001b[39m\n",
      "\u001b[90m# ℹ 21 more variables: V10 <dbl>, V11 <dbl>, V12 <dbl>, V13 <dbl>, V14 <dbl>,\u001b[39m\n",
      "\u001b[90m#   V15 <dbl>, V16 <dbl>, V17 <dbl>, V18 <dbl>, V19 <dbl>, V20 <dbl>,\u001b[39m\n",
      "\u001b[90m#   V21 <dbl>, V22 <dbl>, V23 <dbl>, V24 <dbl>, V25 <dbl>, V26 <dbl>,\u001b[39m\n",
      "\u001b[90m#   V27 <dbl>, V28 <dbl>, Amount <dbl>, Class <dbl>\u001b[39m\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "spc_tbl_ [284,807 × 31] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ Time  : num [1:284807] 0 0 1 1 2 2 4 7 7 9 ...\n",
      " $ V1    : num [1:284807] -1.36 1.192 -1.358 -0.966 -1.158 ...\n",
      " $ V2    : num [1:284807] -0.0728 0.2662 -1.3402 -0.1852 0.8777 ...\n",
      " $ V3    : num [1:284807] 2.536 0.166 1.773 1.793 1.549 ...\n",
      " $ V4    : num [1:284807] 1.378 0.448 0.38 -0.863 0.403 ...\n",
      " $ V5    : num [1:284807] -0.3383 0.06 -0.5032 -0.0103 -0.4072 ...\n",
      " $ V6    : num [1:284807] 0.4624 -0.0824 1.8005 1.2472 0.0959 ...\n",
      " $ V7    : num [1:284807] 0.2396 -0.0788 0.7915 0.2376 0.5929 ...\n",
      " $ V8    : num [1:284807] 0.0987 0.0851 0.2477 0.3774 -0.2705 ...\n",
      " $ V9    : num [1:284807] 0.364 -0.255 -1.515 -1.387 0.818 ...\n",
      " $ V10   : num [1:284807] 0.0908 -0.167 0.2076 -0.055 0.7531 ...\n",
      " $ V11   : num [1:284807] -0.552 1.613 0.625 -0.226 -0.823 ...\n",
      " $ V12   : num [1:284807] -0.6178 1.0652 0.0661 0.1782 0.5382 ...\n",
      " $ V13   : num [1:284807] -0.991 0.489 0.717 0.508 1.346 ...\n",
      " $ V14   : num [1:284807] -0.311 -0.144 -0.166 -0.288 -1.12 ...\n",
      " $ V15   : num [1:284807] 1.468 0.636 2.346 -0.631 0.175 ...\n",
      " $ V16   : num [1:284807] -0.47 0.464 -2.89 -1.06 -0.451 ...\n",
      " $ V17   : num [1:284807] 0.208 -0.115 1.11 -0.684 -0.237 ...\n",
      " $ V18   : num [1:284807] 0.0258 -0.1834 -0.1214 1.9658 -0.0382 ...\n",
      " $ V19   : num [1:284807] 0.404 -0.146 -2.262 -1.233 0.803 ...\n",
      " $ V20   : num [1:284807] 0.2514 -0.0691 0.525 -0.208 0.4085 ...\n",
      " $ V21   : num [1:284807] -0.01831 -0.22578 0.248 -0.1083 -0.00943 ...\n",
      " $ V22   : num [1:284807] 0.27784 -0.63867 0.77168 0.00527 0.79828 ...\n",
      " $ V23   : num [1:284807] -0.11 0.101 0.909 -0.19 -0.137 ...\n",
      " $ V24   : num [1:284807] 0.0669 -0.3398 -0.6893 -1.1756 0.1413 ...\n",
      " $ V25   : num [1:284807] 0.129 0.167 -0.328 0.647 -0.206 ...\n",
      " $ V26   : num [1:284807] -0.189 0.126 -0.139 -0.222 0.502 ...\n",
      " $ V27   : num [1:284807] 0.13356 -0.00898 -0.05535 0.06272 0.21942 ...\n",
      " $ V28   : num [1:284807] -0.0211 0.0147 -0.0598 0.0615 0.2152 ...\n",
      " $ Amount: num [1:284807] 149.62 2.69 378.66 123.5 69.99 ...\n",
      " $ Class : num [1:284807] 0 0 0 0 0 0 0 0 0 0 ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   Time = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V1 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V2 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V3 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V4 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V5 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V6 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V7 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V8 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V9 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V10 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V11 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V12 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V13 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V14 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V15 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V16 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V17 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V18 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V19 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V20 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V21 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V22 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V23 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V24 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V25 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V26 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V27 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   V28 = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   Amount = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   Class = \u001b[32mcol_double()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\n",
      " legit  fraud \n",
      "284315    492 \n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Dolandırıcılık oranı:  0.1727 %\n"
     ]
    }
   ],
   "source": [
    "# Veri setini oku\n",
    "library(readr)\n",
    "credit_data <- read_csv(\"/kaggle/input/creditcardfraud/creditcard.csv\", show_col_types = FALSE)\n",
    "\n",
    "# İlk birkaç satırı görüntüle\n",
    "print(head(credit_data))\n",
    "\n",
    "# Veri yapısını kontrol et\n",
    "str(credit_data)\n",
    "\n",
    "# Class sütununu faktöre dönüştür (0 = legit, 1 = fraud)\n",
    "credit_data$Class <- factor(credit_data$Class, levels = c(0, 1), labels = c(\"legit\", \"fraud\"))\n",
    "\n",
    "# Sınıf dağılımını kontrol et\n",
    "print(table(credit_data$Class))\n",
    "\n",
    "# Dolandırıcılık oranını hesapla\n",
    "fraud_rate <- mean(credit_data$Class == \"fraud\") * 100\n",
    "cat(\"Dolandırıcılık oranı: \", round(fraud_rate, 4), \"%\\n\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d2462789",
   "metadata": {
    "papermill": {
     "duration": 0.005604,
     "end_time": "2025-06-13T18:14:59.702361",
     "exception": false,
     "start_time": "2025-06-13T18:14:59.696757",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 3. Veri Ön İşleme (recipes kullanımı)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "2d736443",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-06-13T18:14:59.717723Z",
     "iopub.status.busy": "2025-06-13T18:14:59.716219Z",
     "iopub.status.idle": "2025-06-13T18:15:00.461737Z",
     "shell.execute_reply": "2025-06-13T18:15:00.459592Z"
    },
    "papermill": {
     "duration": 0.756714,
     "end_time": "2025-06-13T18:15:00.464756",
     "exception": false,
     "start_time": "2025-06-13T18:14:59.708042",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Eğitim seti boyutu: 227845 31 \n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Test seti boyutu: 56962 31 \n"
     ]
    },
    {
     "data": {
      "text/plain": [
       "\n",
       " legit  fraud \n",
       "227453    392 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "library(rsample)\n",
    "\n",
    "set.seed(123)  # Sonuçların tekrarlanabilir olması için\n",
    "\n",
    "# Stratified bölme: sınıf oranlarını koruyarak bölme\n",
    "split <- initial_split(credit_data, prop = 0.8, strata = \"Class\")\n",
    "\n",
    "train_data <- training(split)\n",
    "test_data <- testing(split)\n",
    "\n",
    "cat(\"Eğitim seti boyutu:\", dim(train_data), \"\\n\")\n",
    "cat(\"Test seti boyutu:\", dim(test_data), \"\\n\")\n",
    "\n",
    "# Eğitim setindeki sınıf dağılımı kontrolü\n",
    "table(train_data$Class)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1dd9cf57",
   "metadata": {
    "papermill": {
     "duration": 0.006254,
     "end_time": "2025-06-13T18:15:00.477133",
     "exception": false,
     "start_time": "2025-06-13T18:15:00.470879",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 4. Dengesiz Veri ile Başa Çıkma: SMOTE Uygulaması "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "f971919a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-06-13T18:15:00.492462Z",
     "iopub.status.busy": "2025-06-13T18:15:00.490957Z",
     "iopub.status.idle": "2025-06-13T18:15:15.778017Z",
     "shell.execute_reply": "2025-06-13T18:15:15.775944Z"
    },
    "papermill": {
     "duration": 15.297163,
     "end_time": "2025-06-13T18:15:15.780239",
     "exception": false,
     "start_time": "2025-06-13T18:15:00.483076",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "🔄 SMOTE ile eğitim verisi dengeleniyor...\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "✅ SMOTE sonrası eğitim verisi boyutu: 454813 31 \n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Sınıf dağılımı:\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\n",
      " legit  fraud \n",
      "227453 227360 \n"
     ]
    }
   ],
   "source": [
    "##################################################\n",
    "### 4. Dengesiz Veri ile Başa Çıkma: SMOTE Uygulaması ###\n",
    "##################################################\n",
    "\n",
    "library(smotefamily)\n",
    "\n",
    "cat(\"🔄 SMOTE ile eğitim verisi dengeleniyor...\\n\")\n",
    "\n",
    "# SMOTE, sadece sayısal verilerle çalışır; dolayısıyla faktör sütunları ayırıyoruz\n",
    "train_features <- train_data %>% select(-Class)\n",
    "train_labels <- train_data$Class\n",
    "\n",
    "# SMOTE uygulanacak veriyi sayısal yapıda tutmak için, faktörleri koruyalım\n",
    "# Burada SMOTE, fraud örnek sayısını artırmak için sentetik örnekler üretecek\n",
    "smote_output <- SMOTE(\n",
    "  X = train_features,\n",
    "  target = train_labels,\n",
    "  K = 5,            # Komşu sayısı, önerilen değer 5\n",
    "  dup_size = 0      # otomatik çoğaltma, dengesizliği otomatik düzeltir\n",
    ")\n",
    "\n",
    "# SMOTE sonrası veri frame’i oluşturuyoruz\n",
    "balanced_train <- bind_cols(smote_output$data, class = smote_output$class) %>%\n",
    "  rename(Class = class) %>%\n",
    "  mutate(Class = factor(Class, levels = levels(train_labels)))\n",
    "\n",
    "cat(\"✅ SMOTE sonrası eğitim verisi boyutu:\", dim(balanced_train), \"\\n\")\n",
    "cat(\"Sınıf dağılımı:\\n\")\n",
    "print(table(balanced_train$Class))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3ae78645",
   "metadata": {
    "papermill": {
     "duration": 0.006126,
     "end_time": "2025-06-13T18:15:15.792640",
     "exception": false,
     "start_time": "2025-06-13T18:15:15.786514",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 5. Veri Ön İşleme: recipes ile Pipeline Hazırlama"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "574a1fee",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-06-13T18:15:15.808739Z",
     "iopub.status.busy": "2025-06-13T18:15:15.807217Z",
     "iopub.status.idle": "2025-06-13T18:15:17.299180Z",
     "shell.execute_reply": "2025-06-13T18:15:17.296842Z"
    },
    "papermill": {
     "duration": 1.503581,
     "end_time": "2025-06-13T18:15:17.302270",
     "exception": false,
     "start_time": "2025-06-13T18:15:15.798689",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "🔧 Veri ön işleme pipeline'ı oluşturuluyor...\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "✅ Ön işleme tamamlandı. Eğitim ve test verileri hazır.\n"
     ]
    }
   ],
   "source": [
    "library(recipes)\n",
    "\n",
    "cat(\"🔧 Veri ön işleme pipeline'ı oluşturuluyor...\\n\")\n",
    "\n",
    "# Ön işleme tanımı\n",
    "rec <- recipe(Class ~ ., data = balanced_train) %>%\n",
    "  step_mutate(Amount_log = log1p(Amount)) %>%  # Amount'un log dönüşümü\n",
    "  step_rm(Amount) %>%                          # Orijinal Amount'u çıkar\n",
    "  step_center(all_numeric_predictors()) %>%   # Sayısalları ortalama 0 yap\n",
    "  step_scale(all_numeric_predictors()) %>%    # Sayısalları standart sapma 1 yap\n",
    "  prep(training = balanced_train, retain = TRUE)\n",
    "\n",
    "# Eğitim ve test verisini pipeline ile dönüştür\n",
    "train_processed <- bake(rec, new_data = balanced_train)\n",
    "test_processed <- bake(rec, new_data = test_data)\n",
    "\n",
    "cat(\"✅ Ön işleme tamamlandı. Eğitim ve test verileri hazır.\\n\")\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "288c9c6c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-06-13T18:15:17.319825Z",
     "iopub.status.busy": "2025-06-13T18:15:17.318062Z",
     "iopub.status.idle": "2025-06-13T18:15:17.358906Z",
     "shell.execute_reply": "2025-06-13T18:15:17.356822Z"
    },
    "papermill": {
     "duration": 0.052674,
     "end_time": "2025-06-13T18:15:17.361616",
     "exception": false,
     "start_time": "2025-06-13T18:15:17.308942",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "set.seed(42)\n",
    "small_train <- train_processed %>%\n",
    "  sample_n(5000) %>%\n",
    "  na.omit()\n",
    "\n",
    "# Class değişkeni dönüşümü\n",
    "small_train$Class <- as.character(small_train$Class)\n",
    "small_train$Class <- ifelse(small_train$Class %in% c(\"1\", 1, \"yes\", \"Yes\", \"TRUE\"), \"yes\", \"no\")\n",
    "small_train$Class <- factor(small_train$Class, levels = c(\"no\", \"yes\"))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f3036ed8",
   "metadata": {
    "papermill": {
     "duration": 0.006637,
     "end_time": "2025-06-13T18:15:17.374996",
     "exception": false,
     "start_time": "2025-06-13T18:15:17.368359",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 6. Model Eğitimi: Random Forest ve XGBoost"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "7e8ac4fd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-06-13T18:15:17.393308Z",
     "iopub.status.busy": "2025-06-13T18:15:17.391474Z",
     "iopub.status.idle": "2025-06-13T18:15:17.444672Z",
     "shell.execute_reply": "2025-06-13T18:15:17.442594Z"
    },
    "papermill": {
     "duration": 0.064814,
     "end_time": "2025-06-13T18:15:17.447315",
     "exception": false,
     "start_time": "2025-06-13T18:15:17.382501",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "library(dplyr)\n",
    "\n",
    "set.seed(42)\n",
    "small_train <- train_processed %>%\n",
    "  group_by(Class) %>%\n",
    "  sample_n(size = min(5000, n())) %>%  # Her sınıftan en fazla 5000 ya da toplamdaki kadar örnek al\n",
    "  ungroup() %>%\n",
    "  na.omit()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "22356ac2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-06-13T18:15:17.464750Z",
     "iopub.status.busy": "2025-06-13T18:15:17.462983Z",
     "iopub.status.idle": "2025-06-13T18:15:17.481251Z",
     "shell.execute_reply": "2025-06-13T18:15:17.479408Z"
    },
    "papermill": {
     "duration": 0.029713,
     "end_time": "2025-06-13T18:15:17.483619",
     "exception": false,
     "start_time": "2025-06-13T18:15:17.453906",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "legit fraud \n",
       " 5000  5000 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "table(small_train$Class)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "4e6fded3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-06-13T18:15:17.501412Z",
     "iopub.status.busy": "2025-06-13T18:15:17.499610Z",
     "iopub.status.idle": "2025-06-13T18:16:45.338110Z",
     "shell.execute_reply": "2025-06-13T18:16:45.336263Z"
    },
    "papermill": {
     "duration": 87.849995,
     "end_time": "2025-06-13T18:16:45.340378",
     "exception": false,
     "start_time": "2025-06-13T18:15:17.490383",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "⚙️ Model eğitimi başlıyor...\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "🌳 Random Forest modeli eğitiliyor...\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "+ Fold1: mtry= 2 \n",
      "- Fold1: mtry= 2 \n",
      "+ Fold1: mtry=30 \n",
      "- Fold1: mtry=30 \n",
      "+ Fold2: mtry= 2 \n",
      "- Fold2: mtry= 2 \n",
      "+ Fold2: mtry=30 \n",
      "- Fold2: mtry=30 \n",
      "+ Fold3: mtry= 2 \n",
      "- Fold3: mtry= 2 \n",
      "+ Fold3: mtry=30 \n",
      "- Fold3: mtry=30 \n",
      "Aggregating results\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Selecting tuning parameters\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Fitting mtry = 2 on full training set\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "🚀 XGBoost modeli eğitiliyor...\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "+ Fold1: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:21] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:21] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold1: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold1: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:22] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:22] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold1: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold1: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:22] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:22] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold1: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold1: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:22] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:22] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold1: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold1: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:23] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:23] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold1: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold1: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:23] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:23] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold1: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold1: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:24] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:24] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold1: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold1: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:24] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:24] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold1: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold1: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:25] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:25] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold1: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold1: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:25] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:25] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold1: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold1: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:25] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:25] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold1: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold1: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:26] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:26] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold1: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold1: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:26] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:26] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold1: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold1: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:27] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:27] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold1: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold1: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:27] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:27] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold1: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold1: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:28] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:28] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold1: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold2: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:28] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:28] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold2: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold2: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:28] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:28] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold2: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold2: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:28] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:28] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold2: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold2: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:29] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:29] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold2: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold2: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:29] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:29] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold2: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold2: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:30] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:30] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold2: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold2: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:30] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:30] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold2: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold2: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:31] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:31] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold2: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold2: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:31] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:31] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold2: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold2: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:31] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:31] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold2: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold2: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:32] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:32] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold2: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold2: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:32] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:32] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold2: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold2: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:32] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:32] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold2: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold2: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:33] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:33] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold2: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold2: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:33] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:33] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold2: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold2: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:34] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:34] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold2: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold3: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:34] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:34] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold3: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold3: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:34] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:34] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold3: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold3: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:35] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:35] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold3: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold3: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:35] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:35] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold3: eta=0.3, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold3: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:36] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:36] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold3: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold3: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:38] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:38] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold3: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold3: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:38] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:38] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold3: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold3: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:39] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:39] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold3: eta=0.3, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold3: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:39] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:39] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold3: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold3: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:39] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:39] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold3: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold3: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:40] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:40] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold3: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold3: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:40] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:40] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold3: eta=0.4, max_depth=1, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold3: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:40] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:40] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold3: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold3: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:41] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:41] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold3: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.6, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "+ Fold3: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "[18:16:41] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:41] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold3: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=0.5, nrounds=100 \n",
      "+ Fold3: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "[18:16:42] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "[18:16:42] WARNING: src/c_api/c_api.cc:935: `ntree_limit` is deprecated, use `iteration_range` instead.\n",
      "- Fold3: eta=0.4, max_depth=2, gamma=0, colsample_bytree=0.8, min_child_weight=1, subsample=1.0, nrounds=100 \n",
      "Aggregating results\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Selecting tuning parameters\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Fitting nrounds = 100, max_depth = 2, eta = 0.4, gamma = 0, colsample_bytree = 0.8, min_child_weight = 1, subsample = 1 on full training set\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "📉 Lojistik Regresyon modeli eğitiliyor...\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "+ Fold1: parameter=none \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“glm.fit: fitted probabilities numerically 0 or 1 occurred”\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "- Fold1: parameter=none \n",
      "+ Fold2: parameter=none \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“glm.fit: fitted probabilities numerically 0 or 1 occurred”\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "- Fold2: parameter=none \n",
      "+ Fold3: parameter=none \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“glm.fit: fitted probabilities numerically 0 or 1 occurred”\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "- Fold3: parameter=none \n",
      "Aggregating results\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Fitting final model on full training set\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“glm.fit: fitted probabilities numerically 0 or 1 occurred”\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "✅ Tüm modeller başarıyla eğitildi.\n"
     ]
    }
   ],
   "source": [
    "# Gerekli kütüphaneler\n",
    "library(caret)\n",
    "library(doParallel)\n",
    "library(dplyr)\n",
    "\n",
    "cat(\"⚙️ Model eğitimi başlıyor...\\n\")\n",
    "\n",
    "# Paralel işlem\n",
    "registerDoParallel(cores = 1)\n",
    "\n",
    "# Eğitim kontrol parametreleri\n",
    "ctrl <- trainControl(\n",
    "  method = \"cv\",\n",
    "  number = 3,\n",
    "  classProbs = TRUE,\n",
    "  summaryFunction = twoClassSummary,\n",
    "  verboseIter = TRUE,\n",
    "  allowParallel = TRUE\n",
    ")\n",
    "\n",
    "# 1. Random Forest\n",
    "cat(\"🌳 Random Forest modeli eğitiliyor...\\n\")\n",
    "set.seed(123)\n",
    "rf_model <- train(\n",
    "  Class ~ .,\n",
    "  data = small_train,\n",
    "  method = \"rf\",\n",
    "  metric = \"ROC\",\n",
    "  trControl = ctrl,\n",
    "  tuneLength = 2\n",
    ")\n",
    "\n",
    "# 2. XGBoost\n",
    "cat(\"🚀 XGBoost modeli eğitiliyor...\\n\")\n",
    "set.seed(123)\n",
    "xgb_model <- train(\n",
    "  Class ~ .,\n",
    "  data = small_train,\n",
    "  method = \"xgbTree\",\n",
    "  metric = \"ROC\",\n",
    "  trControl = ctrl,\n",
    "  tuneLength = 2\n",
    ")\n",
    "\n",
    "# 3. Lojistik Regresyon\n",
    "cat(\"📉 Lojistik Regresyon modeli eğitiliyor...\\n\")\n",
    "set.seed(123)\n",
    "lr_model <- train(\n",
    "  Class ~ .,\n",
    "  data = small_train,\n",
    "  method = \"glm\",\n",
    "  metric = \"ROC\",\n",
    "  trControl = ctrl\n",
    ")\n",
    "\n",
    "# Temizleme\n",
    "stopImplicitCluster()\n",
    "\n",
    "cat(\"✅ Tüm modeller başarıyla eğitildi.\\n\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fc079766",
   "metadata": {
    "papermill": {
     "duration": 0.008217,
     "end_time": "2025-06-13T18:16:45.356967",
     "exception": false,
     "start_time": "2025-06-13T18:16:45.348750",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Model performansı karşılaştırma"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "ce72ea0a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-06-13T18:16:45.376396Z",
     "iopub.status.busy": "2025-06-13T18:16:45.374893Z",
     "iopub.status.idle": "2025-06-13T18:16:45.769854Z",
     "shell.execute_reply": "2025-06-13T18:16:45.766949Z"
    },
    "papermill": {
     "duration": 0.408255,
     "end_time": "2025-06-13T18:16:45.772910",
     "exception": false,
     "start_time": "2025-06-13T18:16:45.364655",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "Call:\n",
       "summary.resamples(object = results)\n",
       "\n",
       "Models: RF, XGB, LR \n",
       "Number of resamples: 3 \n",
       "\n",
       "ROC \n",
       "         Min.   1st Qu.    Median      Mean   3rd Qu.      Max. NA's\n",
       "RF  0.9992396 0.9993023 0.9993650 0.9994183 0.9995076 0.9996502    0\n",
       "XGB 0.9993228 0.9994192 0.9995157 0.9994658 0.9995373 0.9995589    0\n",
       "LR  0.9977989 0.9979444 0.9980899 0.9980948 0.9982427 0.9983955    0\n",
       "\n",
       "Sens \n",
       "         Min.   1st Qu.    Median      Mean   3rd Qu.      Max. NA's\n",
       "RF  0.9964007 0.9966998 0.9969988 0.9970000 0.9972996 0.9976005    0\n",
       "XGB 0.9934013 0.9937013 0.9940012 0.9940001 0.9942995 0.9945978    0\n",
       "LR  0.9886023 0.9903996 0.9921969 0.9910002 0.9921992 0.9922016    0\n",
       "\n",
       "Spec \n",
       "         Min.   1st Qu.    Median      Mean   3rd Qu.      Max. NA's\n",
       "RF  0.9820036 0.9834988 0.9849940 0.9840002 0.9849985 0.9850030    0\n",
       "XGB 0.9874025 0.9877025 0.9880024 0.9882002 0.9885990 0.9891957    0\n",
       "LR  0.9778044 0.9781044 0.9784043 0.9806010 0.9819993 0.9855942    0\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nO3deZyVZd348evMDAzDjmzu4YKCCKkpouaKipL4qOVP1MwQt36PaS71qzRNQ80N\n9bFFLaTUwrU0SsIlbDGREndF03BfAGVnWGbO+f0xPuOIMHqSc+451/V+/8EL7nNmznVz3VMf\n557zJVcoFAIAAJWvKusFAACwbgg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg71o3GxsZ77723sbEx64WQAbufMrufMrvf\nBgk71o0pU6aMGDFiypQpWS+EDNj9lNn9lNn9NkjYsW7U19c3/0pq7H7K7H7K7H4bJOwAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACJRk/UCstHY2HjPPfcsX74864XE4+GHH27+\nldTY/ZTZ/ZTZ/dZ16NBh5MiR1dXVZX3VQpImT55c1r9lACA9kydPLnPhJPodu6Yx2Wecccaw\nYcOyXksk8vn8U089NXjw4Koq9/eTY/dTZvdTZvdbMX369PHjx5f/n+VINOyaDBs27PDDD896\nFfE44ogjsl4CmbH7KbP7KbP7bY3EBgCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\n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\nUy4PYQcAGUtwqFuCp1websUCQMYSHOqW4CmXh7ADgIwlONQtwVMuD2EHABlLcKhbgqdcHsIO\nACASwg4AIBLCDgAyluBQtwRPuTyMOwGAjCU41C3BUy4PYQcAGUtwqFuCp1websUCQMYSHOqW\n4CmXh7ADgIwlONQtwVMuD2EHABlLcKhbgqdcHsIOACASwg4AIBLCDgAyluBQtwRPuTyMOwGA\njCU41C3BUy4PYQcAGUtwqFuCp1websUCQMYSHOqW4CmXh7ADgIwlONQtwVMuD2EHABlLcKhb\ngqdcHsIOACAS3jwBAKl4ZX79o68vLOcrvjq/vpwvh7ADgIyVYahbTVUuhHDBvS9ccO8LpXuV\ntanO5VY7Yo5diQg7AMhYGYa67b55z6sP2TaTn2nL5cLRO2y82kFz7EpE2AFAxsow1K22purU\n3Tcr6UsUxRy7EvHmCQCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AChCY75w7/NzG/OF\nrBfCWqW8RzVZLwAAKsmUWXNGTZgxeezQg7bp+x98eKEQhl7915fmLV3nC8tQdVXu9mN33GuL\n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\nzrryhikPTP3lNd8d0Kld/0MvbizypSmFDHe/kF9x8803//GZ+c2f/+lr9gshXNbi/2koqTLs\n/toe8rWfuQx339d+qQm71C1+/coQwokvvNd8ZNGrF4UQvv7i/DV/QH7Fy88+OvW+B2cvWLH4\n9ctDCN9/ZWErDzV9/rFTXmv+BO88/J0Qwlmz3iv6pVnXMtz9j37ulUseDyHsdetL6/AEaUWp\nd7+Vh3ztZy7D3f/o5/a1v24Ju9Q11P+7Jpfb7Wezmo+8cs8XQggPLlj9R2jzjctmzZr1+vKG\n5iPP/nS3XHXd7OUNrTz01t9HhhD+svCDz9aw/NUQwp6TXvzkL02JZLj7K957bvr06SvyH7zE\nqmXPhRD2m/LqOj9N1qjUu9/KQ772M5fh7vvaLzVhR+Fbm3frttk3G//3j1fs0LtT3zW8ET3f\nsLBP++ptTvnT+39c9d6RfTv12XF86w81/Xfhkbf/u/nzvDnttObv2XzCl6Z0str9hS9fEEI4\n8f7Xmx964ReH5HLVd7/7wdvoKLWS7n4rD33yl6Z0stp9X/ulJuwovPPI+dW53G6nXvLHB6eO\n//YBuVzu9Knvf8k9dekJBx100D8Xr2z647Rv75yrrjvpwmt/M+n6E/bfpLpd71+9vOhjH7pg\n+EbV7fue/IP/ufPuO3/8w9P6dajpvdNpDR/30pRHdrvfeObQPjUd+n3zip/ddfdt488d072m\nasjxt5T7/NNW6t1v5SFf+5nLbvd97ZeWsKNQKBSeuOUHuw3YqENN+w22HHrOLx9pPv7n0VuG\nFrOI8o3LJnzvmK026d2+Y/fP7vN/bps5t/mZrT206r2ffverO227RefaTpsN3OHoM698e2Xj\nx740ZZPV7jeseP2Kbxw5YKOete27Dthht69fcuuqFndnKI/S7v7aH2rlpSmbrHbf135J5QqF\nFv9sJwAAFcuAYgCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOyAVKxc/nPuI\nqqqqTt16DtnlgHET/lT4yIfMn3X/Oacc87kBm6/XpUNd156bD9jxK1//3p+eX7C2l3hjxm+/\n/pVDBn5mwy517Tp26THgc3ueOu76t1bmS3peAM1yhcJH/6cMIEIrFz9c23XXmg6bH3TAkA+O\n5hvee/NfDz36QmOhsMuZU/9++f7ND9xyzpe+evFdK/KFzhsO3HGbfh0Ky/79zD9feHtprqr2\n0LNvuv2Cw1f7L+Pbzjl49EW/DyFssu1OAzZZb+EbL7/w3L/mr2zsvPE+9z11z7DutWU6TyBl\nBYA0rFj09xBC5w1P+ehDr9x/cXUul6uue3LpqqYjfzhz5xBCx/X3+PnUpxs/eGLj43+4dliv\nuhDCrt++t+VnePzHXwwhdNvyvyY/Oaf54Kqlr1918g4hhF7bf7skpwTwYb5jB6Si6Tt2nTc8\nZfEb13z00XM+0+3CVxf994vzf7RF94X/Gr/e1me16zL0kdf/8tku7Vd75or3Hhm66R5PLWv8\n6cvzT9q0Swhh1ZKZ66+305LaITPf/segTjUfenZh5XEb9Zz41pKrXlt82sadS3ZyACH4GTuA\nJtt3/iDgJn350nyhcORv7vxo1YUQatfb+e6bRhUKjT84dnLTkacvO/69Vfldx9+yetWFEHLt\nz77k2AMOOODlR98t2doB3uc7dkAqWv2OXeFLvTv/5r3Gvy9YtHPHFet37PFebqMl9a/U5tb8\nqQoNC9ar67mk3eb1S/9VkwtnbdL1itcX/3nBij26rSEEAcrGd+yAtBUa578x6ydnDL9z3rLt\njv/VsC7tVyyYNmdlY6cNjl9b1YUQcjXdj+nbqaH+xRmLV4YQ7phXX1O7iaoDMveRuwYAUVvy\n5o9yuR999PgXx91x69lfDCE0LH8phFDTYYvWP89WdTUhhBfqG3btknt1RWP7LpuUYLEAxRF2\nQFpWH3cS8oveeWna9GcnX3rOjYfuM2abHtUd+oUQGpbPbv3zvLq8IYTQu11VyLVbv13V3JVv\nlG7NAJ+Qn7EDUtHKz9g9+9uvDTrs2vW2vvTdWd8sNCzo1bHnoupNly6b3X5tP2OXX7pBXbd3\nqzZatPSVuqowdoPON7y99C8LV+zedQ13Y1cseGD0mB/VrfeFX084fp2fFEBLfsYOIGxz6E8H\nd2q3+NWfhRByNd3PHdSzYfnLp/z1rbU9/7U/nvjOysa+u1xeVxVCCCcc9pkQwjm/emmNT377\nr5ffddddf5m9fkmWDtCCsAMIIYTtO7dvWPFK0z/+dczNp4YQbjrkiGeWrProM1cs+OehR9yR\nq6q99MYD3//YC6/qWF318Flf/OfClas/u7Bi3H8/FEI48OKdSrh6gBCCsANosqpQKORXzlmZ\nDyGsN+ic27+23fL5fx028IAbp73Q4lmFZ6b+fJ+t95i5ZOWIc+856n8HDtd23++ec/detey5\nvQcffOc/Pvhhu4Zlb1wyZuefv7a4a79jfjK0b1nPB0iSN08AhBBC/7qaEMKdc5f990adQwhf\n+vE/JnY8+ITxfzx2n61P+8zgHbfZrK6w7N9Pz3jm9UW5qtojv//bX5+3T8sP3/Pce6+ft9+J\n10z90tCNNxq082e32KBh0ZyZf39k3srGThvtcdeM69qtfXgKwLrizRNAKlr/J8X+fuLA3X42\nq/eOZ8z5xxXNB+c9NeXyH9/4xwf+/vJbb9fna/ts0v/ze488/uvfGD6o5xpf4vk/3XTJT26a\n9tDMt+ctqKrruunW2+1/yNFnnfXVTWqrS3VWAC0IOwCASPgZOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBI/H9dJdpl9KnNuwAAAABJRU5ErkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "results <- resamples(list(\n",
    "  RF = rf_model,\n",
    "  XGB = xgb_model,\n",
    "  LR = lr_model\n",
    "))\n",
    "summary(results)\n",
    "\n",
    "bwplot(results, metric = \"ROC\")\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "d0ca0395",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-06-13T18:16:45.793337Z",
     "iopub.status.busy": "2025-06-13T18:16:45.791858Z",
     "iopub.status.idle": "2025-06-13T18:16:45.959056Z",
     "shell.execute_reply": "2025-06-13T18:16:45.956303Z"
    },
    "papermill": {
     "duration": 0.1804,
     "end_time": "2025-06-13T18:16:45.962035",
     "exception": false,
     "start_time": "2025-06-13T18:16:45.781635",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nhx9OfZ2sLJ300fNX/PXDrrtds6uwA6Apyc5K/Ov4bU565MNHP5z26IfTUgsTiXDo5uvcPniz\nrMQynwQBqygzYTd99NDD7/18szNG/bZP2+qFrTc4/umzb979r6f++vH9bjukZwhhyNXPb7L7\n7Zf/bcT9N185Z3FynfX7H3T08Mf+b/DCTy5/+9Z1q29YOv+1IUNeS32dSGQVteu683F/uu2m\nM9N7TgCwcm0Lcx89ZqtPZywaO3nu5LmLe7ZvMbBHuz6dW2Z6XEQiM2G39s7DKiuHLbt8t6ve\nSV71kyWb7HPyyH1OrrVZ+34X3PvDG6WO++z74xpljABkTOq9BbXeYRCTvmu17LtW/DEX/f3Y\nBGX4XbEAsKx9+nR+9uSBu2/UMdMD4X/ifkw/YQdAk5Odldiz98o/Z54mzv2Yfpn8L8UAAGhA\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4gThWVyec+m1VR\nmcz0QCDdmvPFL+wA4jRqwsy9bh87asLMTA8E0q05X/xrQNh9fP3AxE/lFbbsNWD3K0a+l9rg\n3fM3TyzPxr99I7MjB8igkqUV1X+SZjMXlb705ezXvp4zt2RppsfSHDXniz8n0wOor2tH3Nsp\nN5WhyZJ53z503RVDj9h68YbfDdu6U2qDEffdn5v4yU3a9Noo3aMEoHn7aPqCUx4bN+brOalv\nE4mwX9+1bjykf492hZkdGM3EGhN2Bx12eM/87Opvjzpy+6J2O404a+ywVw9ILTnsiCPyEyu4\nMQA0vnenzt/l5tfLyiuP3brbwB7tyioqX/1qzmMfTR/0t9feOH0HbUcarDFhV0t+mx36tcid\nOnN2pgcCAFVOfOSDisrky6cM2q5n+9SS03ZY7/Fx0395zztnPjn+ieO2zuzwaA7WgNfYLdfS\nRe9+WrJ03YP7Z3ogABBCCB98u+CDbxf8elCP6qpLOaT/2j/v1+WpT2Z8X1yWqbHRfKwxj9g9\n9egjnateYxdK5k19+PphbTYd8uTFW1RvUJD1kydi2/S8fN7Xf6x7n2VlZSUlJQ0+VICmYElp\naQjh1Ymzysr0RDq8MXleCCFUVjzw9qRaq4pyExWVyRtf/XLDDi3SP7Bm6M1v5ocQlpSWZvC3\nfKb+3q0xYXf6UYfX/DaRVfiHO89er+DHV93VevNEXsvNV7rP4uLiuXPnNtwYAZqQ9ybPDiHc\n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\n+3cnz3538k/+WbJjz7aPj595+XOfbtChRaaGR9Px5jfzQwhLSksz+OMLWKlM/XKPIeyeevSR\nzlWvsQsl86Y+fP2wNpsOefLiLVZ6w+Li4rlz5zby6FbovcmzQwg3jJlyQ6ZGQNPzwhdzXvhi\nznJX/en5iWkeDE3Ze5Nn775ufqZHAaxQcXFxCKGysjLNx40h7E4/6vCa3yayCv9w59nrFWSv\naPtqRUVF7dq1a7RxrcSAHqVh7Henbd99225tMjUGmo4vZi++5IWJh23eZb8+td/08+rXc297\nc+pZO/YY0LV1RsZGk/LmN/NvGDNlQI+OGfzxBaxUUVFRCCErK90fPxJD2H29pLz6zRMlc6c/\nOOyAk47fdsO955/YpajuG+bl5RUWFjb+AJevID8/hLDjBp0Gb+YNj4SFpeVXvvL11AVlR2zd\ns9aqxz+enUiEs3bt1bVNQSaGRtOSlzfthjFTCvLzM/jjC1ipvLy8jBx3Dfgcu1VS2G7tY4bd\nn0xWPDjGp3eyJmmVn3PM1t1e/WrORf/5rDJZ9Z8KJJPh+le/emL89IM26aLqAFipGB6xqyWn\ncKMQQvGk4kwPBFbNVftv/O7U+Zc9//kD703drmf7nKzE2MlzJ8xc1Ltzy1t/uWmmRwfAGmDN\nCLvy0ikPP/xwzSW5LfoccsBmK9g8q2V21vxP5qdhYNCAWhfkvHrq9n958YuR73878v1vK5PJ\nnu1anLvrBkP36NW6YM34qwpAZq0Zvy3KFr41ZMiQmktarXvuisMuMbhT4QOPnDbuhrf6t1gz\nThBSCnKyLt6r98V79S5ZWlFRmWyZ7wIGYBWsAb82hnw6e8gKVvU7Y2zyjOUsv2v6orsac0gN\nojA3u/pPqMWFwYr40QHUYQ0Iu1jt06fzsycP3H2jjpkeCLAm8aMDqIOwy5jsrMSevWt/YhlA\n3fzoAOoQ28edAAA0W8IOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEjmZHkAmjR07NtND\nSJPKyspx48b1798/K0vKNy5TnU5mO53MdtqY6nRqvNnOVGM007ArLCwMIQwfPjzTAwEAopXq\njXRKJJPJNB+yKaioqHjmmWeWLFmS6YGkyRtvvHHttdf+/ve/HzRoUKbHEjlTnU5mO53MdtqY\n6nRq1NkuKCjYd999s7OzG3zPdWimj9hlZ2cfcMABmR5FWl177bWDBg0aPHhwpgcSP1OdTmY7\nncx22pjqdIpstj1/DwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWHXLKQ++Tr9\nn3/dDJnqdDLb6WS208ZUp1N8s91M/+eJ5qaiouLFF1/cfffd0/z5182QqU4ns51OZjttTHU6\nxTfbwg4AIBKeigUAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwWwN8/s9r991p\nQIeidptut+dlD7y3wu2Spfdd/tvtNu/dqqCoW9/th454baWrFkwemliePseNSW0wf9J5tVYV\ndRrciKfaBDTebIcQQqh88urfb7vpRq0LWq6/8Za/ufSB0hqfI1nfQ8eikac61DHbLuwVbrd6\ns13nHdHcLuxQz1Ou++pdrdluhhd2yjejhmy07Yi6t6njTlm9VStdmzFJmrbZ7/85LyvR99Az\n7xp5zx+O3TKRyDr75WnL3fLuI/tk5bQ94eLr/vHEyMtO3S8nkTju/i/rXvwXvO8AABt7SURB\nVFW64PXrfurqP5+SlUgc98Sk1A0nP7NHVk67mhvceNu/03PiGdGos51MJt+6dJdEInvw2VeO\nfOzha/54dEFWYsDpz63qoePQ2FOdrHO2XdgNO9t1rGpuF3ay3qdc99W7erPd3C7slPIlU3/Z\ntWW7DW+uY5s67pTVW7XStRkk7Jq6CzZo23Kdk0oqUt9VXNCnfcu1j192s5LZT2QlEvvc/mn1\nkmdP75fXcvOSirpWLWvE4PW77v7X6m/fPHOTFp0Pb6hzafoae7YHts5fZ+f7qlc9NXj97Pyu\nFaty6Gik4cKuY7Zd2A0423XfEc3twk7W75TrnrTVnu3mdmEXf3fHUb/YZ722+SGEusOujjtl\n9VatdG0GCbsmrXzJ5JxEYtvrx1cv+frxvUIIbyworbXljHcPDCE8PaekesmCyZeGEIZPXVjH\nqlo7mfn2pTn569bc+SNbdO7Y796GPKUmLA2z3b0gZ6Mj/1u96t2hmyey8koqVuHQcUjPhb2i\n2U66sBt0tutY1dwu7GS9Z7vuq3e1L/tmdWEnk8nFMx8cOnTo0KFD92hXUEfY1XGnrN6quvfZ\nwCe56rzGrkkr+f6J8mSy/z7rVC/psNWOIYR/zC6ptWVe6+4hhJenLa5eMv+z8SGEV2aV1LGq\n5h6SlSUn7/+XgZc+NbBVXvXCF79bnN36nUMGbdKuqLBn3y0PP/u62eWVDXd+TUsaZvtvh/f5\n+rFj7x/96eKyki/H/uOk6z7Z4OBbCrJW4dBxSM+FvaLZDi7sBp3tOlY1tws71Hu26756V/uy\nb1YXdgihsNNhl1122WWXXbZvu4I6NqvjTlm9VXXvs6HObvVluiypy9yJZ4QQrvxmQfWSxbMe\nCSEcMn52rS0rl87Zrk1+qx6HPDduUsmS+R+9ePdWrfJCCHu9NLWOVTX38Pnd++e13GL20p88\nQdu9ICc7t9PZf/3744898Oc/DGmRnbX2zn9qtNPNsHTMdsXi0zfvWP23r12fE+aXV67SoeOQ\npgt7BbOddGE36GzXsaq5XdjJes923Vfval/2zerCrmn4+m3reMSujjtl9VbVvc8GPrdV5xG7\npi1ZGUJIhEStxRUVtf8Rlshp9/Qb926aeH7P/j0LC9pssc95e113ZQghv11eHatqHKf4hDOe\n3/Liezrk1LgkkmVX3HH30x98fvU5Jx58yOHnXTnyret2nz76kqunLmycs820xp/tW4/b9uYJ\nLc+59q5RLz57zw1/XOube7cafGXlqhw6Emm5sFc82y7sEBputuu6I5rbhR3qO9t1X72rO9vN\n7MKuvzrulNVbVfc+My7TZUldFk69NoRw8udzqpcsmHJFCOG0L+cu/waVpZM+effZ51/5el7p\nwqlXhxAunjx/5auSyeljjs/KaT2+eGnd4ylb9EEIYZeHJ/6P59U0NfZsp/Z/wqhvqncw443z\nQwjnTJizyodew6Xhwq5jtpfdvQv7J1bvx8iKr/nmc2EnV3W26/yxvNo/z6vFfWHXVPcjdnXc\nKau3qu59NvC5rTph16SVl3yVk0hs//cJ1UsmP7NfCOGVebVfnllZsXjChAlTl5RXL/nklu0T\n2YVfLymvY1X1kms379R5wC219lk659OxY8eWVv64ZOniT0MIPxs1pSFOrslp7Nme/vq+IYT/\nzv9xb+VLpoQQdh75Zf0PHYc0XNh1zLYLu2Fnu45Vze3CTtZ7tuu+eldvtpvbhV1T3WFXx52y\neqvq3mcDn9uqE3ZN3R/Wb9NmvXOrX/h2zYBORWst593sleXzO+dlb3zqS1XfLp1z2FpFnbca\nXveqlKWLP83PSuz5r0m19jl/0qUhhJNf+PGleJ/ffVAikf3P70uSkWrU2U79C++wR7+q3s+0\nl8+ofgypnoeORmNf2HXMtgu7YWe77juiuV3Yyfqdct2Ttnqz3Qwv7Gp1h12yzjtl9VatdG0G\nCbumbsabl2QnEtuffuV/Xnl2+Hl7JxKJ3z9b9fd23FUn7b///u8sLEt9+/J52yayC399+a2P\nj7z9pD27Zed2emDSgpWuSiaT3409PITwyKzFyxy84uxtOucU9Dz3mr8/+c9Hhl90XNucrE1P\nfKixTzmDGnu2L929a3beWr+57G+P/fOxm/5yRs+CnE5bn1G+skNHqe7zrTnbq31hr3i2XdgN\nfGHXsaq5XdjJes923Vfvas12s7uwqy0bdrUu7DrulNVbtdK1GSTs1gAfPnTZ9n26FuTkrb3h\nNkPvebN6+eghG4YaH2hUWbH4zguP6tWtU16Ltpvt9qtH3ptVvWUdq5LJ5HM/Xy+3RZ/lfVxx\nsrx06jVnHtana4f8vNZ9Bmx/2pUPL61c3nYRadTZrlw655Y/Hrv1Jhu0zC9ar++AI86+9ruy\nipUeOlZ1nG/N2V7tC7uO2XZhVy9vmAu7zjuiuV3YyfrN9kqu3tWa7WZ4YacsG3a1Luxkndfh\n6q1a6dpMSSSTNf6vSgAA1lg+7gQAIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg5oLsoWvpFYRlZWVlGbDpsO2nvYnS8ll7nJ3AkvDD31qC37rN++VUFh6w7r99nq6NMufOmz\neSs6xLdvPXHa0Qf17bFOq8LcFq3a9dly59OH3T69rLJRzwugWiKZXPZHGUCEyha+kd96u5yC\n9fffe9Mfl1aWz5n2xZh3P69IJged/ezrV+9ZveKhob889s9PllYmW67Td6uNexYkF3/18Tuf\nf1ecyMo/+IL7Hr10cK1/GT8y9MAhV/w7hNBtk637dGs//9tJn3/6xdyyipbr7vb8uGcGts1P\n03kCzVkSoHkoXfB6CKHlOqcuu2ryC3/OTiQS2YUfFS9NLXn67G1DCC267HTHs+Mrftyw4oOn\nbx3YsTCEsN15z9Xcwwc3/SKE0GbDnz/10czqhUuLp173mwEhhI5bnNcopwTwUx6xA5qL1CN2\nLdc5deG3Nyy7dmiPNpdPWfC7L+feuEHb+V8Mb9/7nNxW27w59b+btcqrtWXpnDe36b7TuMUV\nt0ya++vurUIISxe916X91ovyN33vu7f7FeX8ZOtk2fFdO4yYvui6bxaesW7LRjs5gBC8xg4g\nZYuWPwbcyCOvqkwmD3v8sWWrLoSQ337bf953QDJZcdkxT6WWjP/riXOWVm43/KHaVRdCSORd\ncOUxe++996R3v2+0sQNU8Ygd0FzU+Yhd8pedWj4+p+L1eQu2bVHapUW7OYmui0om5yeWv6tk\n+bz2hR0W5a5fUvxFTiKc0631NVMXjp5XulOb5YQgQNp4xA5o3pIVc7+dcPNZuz82e/HmJz4w\nsFVe6byXZ5ZVFK194oqqLoSQyGl71FpF5SVfvrWwLITwj9klOfndVB2Qccs8awAQtUXTbkwk\nblx2+S+G/ePhC34RQihfMjGEkFOwQd376VWYE0L4vKR8u1aJKaUVea26NcJgAVaNsAOal9of\ndxIqF8yY+PLYT566aui9B+923Mbtsgt6hhDKl3xd936mLCkPIXTKzQqJ3C65WbPKvm28MQPU\nk9fYAc1FHa+x++SJ3/Y75Nb2va/6fsK5yfJ5HVt0WJDdvXjx13kreo1dZfHahW2+z+q6oHhy\nYVY4Ye2Wd31X/N/5pTu2Xs6zsaXzXhxy3I2F7fd78M4TG/ykAGryGjuAsPHBt/Qvyl045e8h\nhERO24v6dShfMunUV6evaPtv/nPyjLKKtQZdXZgVQggnHdIjhDD0gYnL3fi7V69+8skn//t1\nl0YZOkANwg4ghBC2aJlXXjo59Z9/HXX/6SGE+w469ONFS5fdsnTeOwcf+o9EVv5V9+5TddvL\nr2uRnfXGOb94Z35Z7a2TpcN+NyaEsM+ft27E0QOEEIQdQMrSZDJZWTazrDKE0L7f0Ed/u/mS\nua8O7Lv3vS9/XmOr5MfP3rFb753eW1S210XPHP7DBw7nt/3ZMxftunTxp7v2P/Cxt398sV35\n4m+vPG7bO75Z2LrnUTdvs1Zazwdolrx5AiCEEDYqzAkhPDZr8e+6tgwh/PKmt0e0OPCk4f85\nZrfeZ/Tov9XG6xUmF381/q2Ppy5IZOUfdvETD/5pt5o33/mi526f/bOTb3j2l9us27Xftptt\nsHb5gpnvvf7m7LKKoq47PfnWbbkr/vAUgIbizRNAc1H3fyn2+sl9t//7hE5bnTXz7WuqF84e\nN+rqm+79z4uvT5r+XUllfuduG+2w674nnnbm7v06LPcQn71035U33/fymPe+mz0vq7B1996b\n73nQEeecc2y3/OzGOiuAGoQdAEAkvMYOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg7WDJNeffD0ow/s1bNrq4K8tp3W6T9on/P/OmLG0srGO+J3r9y4yyY9C/Ny\n8gqKTp04L4QwatA6iUQikUhc/s3COm44oneH1GaPf1/SeMNrKNNG75MabYfeIzI7knpO77Iq\ny+fcfuFvttqoW1F+YZfuvQ793cUfLyir+yYl37019IRDenftVJBX1G3DzX994U2zl7mWjlir\nKLE8pclVOy8gnXIyPQBgZSqX3PDrPU6/Y8yPS0qnz589ffzY//ztmptGjH7xV73bNMZB99j/\nrI+Ll4YQQlhcUumXeRNVufS7E7faZMRH36e+XfzNF4/cfMm/Rv77ha/GbN82f7k3WTjpka02\nOfLzqjs3TJ344e3DTn308dEfv//Q2nk//Gs/WfrvOUsaf/hAAxN20NQ9fso2p98xLvV12/UG\n7Lp13+TC795+ZfS3JeWLZ7x75JYDu3774fZt8hr2oKXzX0lVXWGHn//35Us7dm8dQug55KQz\nBy4IIWzTqoEPx2p77by9UlXXc+/fXnjEVp+8cNc194xZMvfdg3cfPvPd85d3i8pTdzzh8+Kl\niUTiZ78deuhWXT789y1/e3z83E8e3em4w7544ODURkvm/GdBeWUiK/eM039X6/bZjXtCwP8m\nCTRhCybflEgkQgiJROKIq/+9tLJqednCicf0bZf6W7z+4FENftzFsx9L7bx9r7tW9bZ39Wqf\nuu1jsxc3+MAa3Lev7L3aZ9qwnhm4dmokw6YsqO9tKkv7tsgNIeS33nZBedXFcVGvqgvjpXlL\nlr3FwqnDU2u773t/9cKLNu0YQsjKbjFh8dLUktnjjwkhFLTf+386JSDtvMYOmrSXT/5LMpkM\nIay71+33n71fTqJqeW7L9W987pLU19NeuObHGyRLn/n7xfvtsGmntkV5LVp367Xl0Wf85cNZ\nP3lO7ZaN2qdeLPXYrLn3X3xy/+5rFeQWdO7Z//gL71xcmQwh3LvjJhttenJq43lfnd2tW7ch\nz00NK3gRWMWSKVefdcIOm21Q0KJN74H7/X301GXPouS7d//061/17d6lRV6LdTfY+IATLnj5\ns/mrNKSUyqUzRww7dcdN12tTlFfYql3/7fa+YsTLyVU81uqpY7evn9ovNfhBN31SvX3x9JtT\nC1uve9r/MrCH+3fJzc3Nzc3d/7/Tll27eNajny5eGkJov8kFrbKrLo5fnrRh6ovrxs9Z9iZz\nx49KfdH/j7tVLzzy7L4hhMqKxZd9Pi+15LvnJ4QQWnQ6JFlZ/OX4d157872ZJRUrHS2QeZku\nS6Au27euepnUhV/OW3btl19++eWXX06c+HXq28ryBWfu0X3Zv+a5LfvcM2Fu9a1u3rDqEZ1D\nD96g1pb9Tnqq5gbVdnvy6+TyHlIqXzLpkA1+8gq/rJw2e7YrSH2desRu/sSRfYpya+0wO7fT\nFf+eXP8hpY71y761BxZC2OKEHx9pq8+xaqnPI3Z173bR9L+nlrRZ70/VN/noqq1TC3e45dN6\nDmy5j9iN7NMhtXDvV75ddmDff3pU1SydOrZ64dSX9kot3PLyD5a9yaR/7Z5au/9r06oXfnH/\nTqmF2147vmowu3QNIbTrd+iWXVqkVmXltvnl2beUVKxokoAmQdhB01W59MdHXKaVrvw36qtn\n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\nnP1POmfYn87dt3/VB0rveFXV2ziWFo/rlJt6I07ePsefOeyyCw7dqWryCzvsUf32aqAJEnbQ\n1FWWL7hiyObL/YdZfttNbntrVo0t5526y7rLbpZb1OvuT5bzOXb/c9glJz35m9yfvjgvK7vl\nrm1/8jl28z67u2dB7ZfzJrIKTrnjw1Ua0tLij/fuuZzP4NjtvKeqb1KfY9VSHXbLVdh+v/rv\ndsqog6vXdt7qtpqr6rOH1fi4k2QyWVE6/dDebWvtOb/1gBdnlaQ2qP6PQKr3MOVf56ceXKyp\ny6AzFtcotvF3nJizzMsuc4t61fxARKAJ8lQsNHWJ7Fbnj3z/k2fvPGnwz9br2rkwN6dlmw79\ntt3j9MtuG//Neydv3bHGlm1uePHzf9160T7bbdK+VWF2fou119/8iNMuf+vrD4/pW/t3f4Po\n8fNbprz5xGlHHzKg97p5+S3X3/Jnf3tm3FGdW9Tcpk2vY8ZNePncow9Yv0v7/NwW3TbcZJ+j\n//DC+Kk3nbDpKh0rp8XG/54w/qYLTtq2b/eWBTkFrdptvtOB1z7yzot/3r/Bj1VLPXe7zq7X\nt8+t+qG6xzUHrMYeVkNWXpcHx332t/NP3Gz9dVrk5rbvst7BJ/7xra9f363jCl8J1+2AKya9\nPvK4A3br3b1zbkGrHr0HnjHs7i9fu7awRu31O+HvX71879H77tClXcucnILO3fv96jcXv/HV\nB0cvE5FAk5JIJuv70QYAADRlHrEDAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIxP8Djlhb69BvgysAAAAASUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "dotplot(results, metric = \"ROC\")"
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "none",
   "dataSources": [
    {
     "datasetId": 310,
     "sourceId": 23498,
     "sourceType": "datasetVersion"
    }
   ],
   "dockerImageVersionId": 30749,
   "isGpuEnabled": false,
   "isInternetEnabled": true,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.4.0"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 118.837385,
   "end_time": "2025-06-13T18:16:46.193065",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2025-06-13T18:14:47.355680",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
