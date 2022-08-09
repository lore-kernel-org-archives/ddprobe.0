Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478D723D0
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660036852;
	h=To:Subject:From:Message-Id:Date;
	bh=af2hZkyicvlCtF/nTDSG12N5H0xHZ7JYXuGUvOVsrYk=;
	b=hWZ5M6R1mxHDAcxwq9A1dj9p6RYuCV4rNIStGQab+Fume3OMcFVisiRrGXWF6qqH
	S/t4MmZ6k6dNpkf7NUnBwX0CX0eJIkhKTTUrBMtEU5+SggMlAbQmA+STatZkz8z+DsF
	pWG408bwaUotBZsBS7nabHMg/wZKjAxblQ2H0Udg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660036852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=af2hZkyicvlCtF/nTDSG12N5H0xHZ7JYXuGUvOVsrYk=;
	b=VO261ln/zropGw3hYWpCp/oUABc8xx6KQ9zWuMul99AOTW+TPcDPCie45ufTWfg6
	o7DhpGHQiUL1Rh0skw73qAxDIZfYbFT4lKqZqVXbXsCPeZL+YM2vWjHenhQpRP8NNGo
	D9jPwRnFt5WjyQRamr6wkJ8taxZ4bFaHW94U1t5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018281e82b60-30e35c47-2128-46fd-b80f-e7bee1715072-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1fe20d8b429c9c237072acbec43cfab1feb2ce0e21e76ed9681781141d06f80
Date: Tue, 9 Aug 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660036852
