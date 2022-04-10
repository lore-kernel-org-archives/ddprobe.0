Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB6C139A
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 21:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649627158;
	h=To:Subject:From:Message-Id:Date;
	bh=38TyrDirGRA9BaLWvNjTOHikXftMr2SAw9KCHOMDLf0=;
	b=PdzTjiL80o9iS07dEvTKfwqLCXl+sSeGllEK2M8CTVnOWRuvY2h5MRWBdN1HP9Fs
	D4c+ae7tNcCtPKEtK1kIV5h9bVJ7YtrJfLAhcqVFjh1q+YXaFRWphAjcC+GAgvGwtkm
	qYddIrQg4ihDhPXGliECKsl4zA4GBVNnv97YOOrE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649627158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=38TyrDirGRA9BaLWvNjTOHikXftMr2SAw9KCHOMDLf0=;
	b=S5jlnlDmhnz6Rgy3c8Z9U4ocr17pksPTj5DdVG7+COr7XlxRqPFnZ1l+yylrxgNl
	suBLokS5BTF0PRAaNa/ZG2iKqalhSO8TrpGMZ43uEIIp//9AQwwA3j71OTo7J7SGjcX
	gL5fpWTfkz6ciiItFdsWzc3OT783E0MVzoh0U3ec=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801570d722-8d8b6a8f-bac5-4fb9-b0be-f9e84b8bb82c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44eab2487de8c9feb00c4690431029eb8ed6dc4c24b3308b03329d85cef79325
Date: Sun, 10 Apr 2022 21:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649627158
