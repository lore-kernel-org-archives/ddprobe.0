Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6B42579
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657293412;
	h=To:Subject:From:Message-Id:Date;
	bh=lRFJfefOgW5TP5KSaIqgzo7NUklYiCiYKEG3ITzY9A0=;
	b=YaIGxcrDsc/KhvlH714y5dw5yF/Y09LzNVvoRGBImVePFJ81jocVFdTRTU/1Vemg
	BUeRzMT/3rywmEF7E1UyKU0CIMdcgtDNbnuLviz5+J/zk3dKbqmOgrJBIyWuVaOVSLq
	jRpyLO4rResIcxDJWZPfP+WxnBUpUkgpjKVVDsVA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657293412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lRFJfefOgW5TP5KSaIqgzo7NUklYiCiYKEG3ITzY9A0=;
	b=LdA82ua5GgNBWKMmDyuUrSpPZXbzTI1eDf6pkeD3HdImWQ+DBSP2cyVtIQ+I29uk
	GcWHVESaZHls1W4BAXmqOapbTx5KPDVtt4O5a0bF92nsjyvzGRZWtn0CfeHMzmpNP8B
	UKCLMgbDSMXpqohiWUu76hvMh8hCgZLwe4p/BeNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181de629801-44bceacc-ed70-43ff-8607-b93727e1dc2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e4305abf0eab9bf839e6d9ae5af3c1c722463d2ad713031adeb9d8bbc0d73a4
Date: Fri, 8 Jul 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657293412
