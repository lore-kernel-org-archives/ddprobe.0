Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6399823A9
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 04:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657601812;
	h=To:Subject:From:Message-Id:Date;
	bh=s6gbpwlA60VIIyCzjg1486VDJqZm8NopQhbEu1X9ZyU=;
	b=L5Snem8bAeWQwwDWnnuz2jjzY7Oc0/sKm81yVgQOFp2IpG7LRSVvuV+sYRz49wN1
	0JaNAxfrTflgmEmJMl2oiHGsny3csHzMlidgKba9Q9Tcx7dafzitWhdG7uUXwA25jru
	PP81ZKnOAcVv0I/AeL1Xobl7kmLQtJWOJgiypoyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657601812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s6gbpwlA60VIIyCzjg1486VDJqZm8NopQhbEu1X9ZyU=;
	b=a7pAnSLtN/bQhg/Qo9Hg/Or+esfqoO9Ibt/9CRzW9wMr60XBFUBEH6kSi5BH2l9g
	nZ+N8obGRyY5RjbdyzF4Hb6QR/xpMpX7GYbBW8j1+t3T+tn15ZH6Vn31OR/aaU1Zn89
	qHnHjGO/k/5ZcuTTRuQnC76MxScY0v0WvSQUjXY8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f0c46772-a98b6268-1a56-444a-a963-b741eda27c39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 468eb58eb76c18cd303ed7b49b10c49bf97e050ffd4a5d355b0000d90baecc13
Date: Tue, 12 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657601812
