Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFC77F
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 02:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653703799;
	h=To:Subject:From:Message-Id:Date;
	bh=bFacHgt8v+HKNiBPVULB/A3Mw1UHLGVAvsfO8kq8Ls0=;
	b=VwxUYDBJelPgnZ/pGn3kkHOUBz06Yh7PT+qqGZwIcyVprkxrWJLIEAFWKgSqreMH
	W3/Sa03izBacvLeiKcRwnz4lCCHwlWjW1XuGSsWWh6lr6eTQkEpQKJm+6eG+ng81t+/
	W5uF9Pjk+2/2IPgWQ0uRx1m1xdFijXP5zhO3kOUI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653703799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bFacHgt8v+HKNiBPVULB/A3Mw1UHLGVAvsfO8kq8Ls0=;
	b=IYD8hrNRNhry1JeCSNVXFNaQR4NRC9DbRFF3xEfTC1Pna4XOLqXyxQnGdJH+PUsa
	j49Son4vJL/+U014ahoVe3sY9SRHyLYe8ggFcUN3x7ys//crdMgpw8DFDHE5XWHfsue
	5bKhMd+ZIbkCb8X3IRBDqdWFWN1hz2ROr89SF3XE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181086d71ea-f12731f1-6c71-4ca9-b810-0c89a5298bf5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3bbbc3bf45645c19d68573e0089517fba8208e73a86f53d003912d136d17394f
Date: Sat, 28 May 2022 02:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653703799
