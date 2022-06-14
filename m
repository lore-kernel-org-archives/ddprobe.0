Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABB2185F
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 14:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655216759;
	h=To:Subject:From:Message-Id:Date;
	bh=GWln66rLMY+vwDieIvQTlu8pfX7BpqFFq1/WJBOgYec=;
	b=JH0Lh6RPz4TETshd0zknQboB023hsw/V2axjniI4qZZ2IsxBJbjegt+5/qA2UT2a
	Yftyj1tWV0OGjjKRCFX7U2USJiK8PEaHpAEk6wBOdNAD4D3SOMDxGEdcpj88RgW/AVv
	2UufjeTm5vj5ncDAlrNSAm8dBUWnxnFU7HFFQzEk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655216759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GWln66rLMY+vwDieIvQTlu8pfX7BpqFFq1/WJBOgYec=;
	b=bdDWV0s2yyVHGE73uhK+aenO4CjVAvt5UmVfkCckTz0P8PEKRt10yZqB3pDQ9TL9
	yMF9O2YInPebypxRr3qjsOUfUIEBMBGtlh+bGJiWtuLqsGxYgY6CkwfIFsWsnXPRVym
	puqQX08ggMSV3jPNVb8hmrNGaD7mhEv7I3o2s7v0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181629b61dc-37362842-1569-44df-b9a3-2417fd40a334-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e8fcdf6f7bc46f79c5529c84061f300868ab7291a8d4a0fbe04cdac3923cbf4
Date: Tue, 14 Jun 2022 14:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655216759
