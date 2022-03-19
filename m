Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D435386
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 08:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647678384;
	h=To:Subject:From:Message-Id:Date;
	bh=QhlnCo0D9wBB2ADcYQY8z2oVjxSZf7zSpNOnFCMgok8=;
	b=dccLZCQh2PTsiSQfBSmHbN+F3fsIxXvYm375RREyiT7JiYfO79qJ2s3YHdlUla9S
	vTwmjjlmPD5OoYxrtC9WvrUIvzLubKwNfUhjfiWN+L5jlXrVL4PAJmgBvKQbrIcRQcv
	hffwp5rQ7SsztxWAcPeNAbpJzOm+IuhU3x/4T6uA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647678384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QhlnCo0D9wBB2ADcYQY8z2oVjxSZf7zSpNOnFCMgok8=;
	b=hBTG1Xq2p71CF9+kqQt/KyeKRpHwnd6tpTXeq0E+ywkNhY4livsqqnlFD8sfh2M4
	5c7/29rQ+OPdJEg8ATZWhM5CbhN6WEx/zYIVABZnpne59Og9zBkrP3mADNw8iQzKA+X
	jRSahrcUdF9UJqs/KE0mZ614SZ4lgkKNt3oSrvqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa148ea69-007e9578-d80f-4bde-8f48-7c9178905780-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12c823bf8da10f7d63168cd29dceeb7f6da8aaf4ca19f4e144ca32d386b5f156
Date: Sat, 19 Mar 2022 08:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647678384
