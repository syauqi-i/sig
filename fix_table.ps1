$content = Get-Content 'index.html' -Raw -Encoding UTF8

$newTbody = @"
<tbody>
                  <tr><td>1</td><td>Boja</td><td>2</td><td>2</td><td>7</td><td>171</td><td>80</td><td>57</td></tr>
                  <tr><td>2</td><td>Brangsong</td><td>0</td><td>2</td><td>3</td><td>41</td><td>42</td><td>9</td></tr>
                  <tr><td>3</td><td>Cepiring</td><td>0</td><td>0</td><td>4</td><td>28</td><td>32</td><td>5</td></tr>
                  <tr><td>4</td><td>Gemuh</td><td>2</td><td>2</td><td>0</td><td>132</td><td>75</td><td>59</td></tr>
                  <tr><td>5</td><td>Kaliwungu</td><td>0</td><td>1</td><td>5</td><td>99</td><td>47</td><td>5</td></tr>
                  <tr><td>6</td><td>Kaliwungu Selatan</td><td>1</td><td>1</td><td>2</td><td>7</td><td>20</td><td>41</td></tr>
                  <tr><td>7</td><td>Kangkung</td><td>0</td><td>2</td><td>2</td><td>12</td><td>26</td><td>6</td></tr>
                  <tr><td>8</td><td>Kendal</td><td>1</td><td>2</td><td>9</td><td>371</td><td>97</td><td>97</td></tr>
                  <tr><td>9</td><td>Limbangan</td><td>0</td><td>1</td><td>1</td><td>21</td><td>24</td><td>5</td></tr>
                  <tr><td>10</td><td>Ngampel</td><td>0</td><td>1</td><td>3</td><td>10</td><td>27</td><td>4</td></tr>
                  <tr><td>11</td><td>Pageruyung</td><td>0</td><td>1</td><td>3</td><td>16</td><td>18</td><td>3</td></tr>
                  <tr><td>12</td><td>Patean</td><td>0</td><td>1</td><td>2</td><td>24</td><td>24</td><td>5</td></tr>
                  <tr><td>13</td><td>Patebon</td><td>0</td><td>2</td><td>3</td><td>17</td><td>33</td><td>8</td></tr>
                  <tr><td>14</td><td>Pegandon</td><td>0</td><td>1</td><td>1</td><td>32</td><td>34</td><td>5</td></tr>
                  <tr><td>15</td><td>Plantungan</td><td>0</td><td>1</td><td>1</td><td>13</td><td>19</td><td>3</td></tr>
                  <tr><td>16</td><td>Ringinarum</td><td>0</td><td>1</td><td>0</td><td>13</td><td>23</td><td>3</td></tr>
                  <tr><td>17</td><td>Rowosari</td><td>0</td><td>1</td><td>1</td><td>41</td><td>34</td><td>8</td></tr>
                  <tr><td>18</td><td>Singorojo</td><td>0</td><td>2</td><td>2</td><td>18</td><td>39</td><td>7</td></tr>
                  <tr><td>19</td><td>Sukorejo</td><td>0</td><td>2</td><td>3</td><td>33</td><td>39</td><td>7</td></tr>
                  <tr><td>20</td><td>Weleri</td><td>1</td><td>2</td><td>2</td><td>278</td><td>67</td><td>66</td></tr>
                </tbody>
"@

$result = [System.Text.RegularExpressions.Regex]::Replace($content, '(?s)<tbody>.*?</tbody>', $newTbody.Trim())
[System.IO.File]::WriteAllText((Resolve-Path 'index.html'), $result, [System.Text.Encoding]::UTF8)
Write-Host 'Berhasil! Data tabel sudah diperbarui.'
