Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E611363
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 17:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654448460;
	h=To:Subject:From:Message-Id:Date;
	bh=F8cGFtuKTpPLAF5FF9/Sa6DLHSrLf2VtO7qB9HFoazs=;
	b=N1aFjFdCis3WynZ5OZzQTw86kDvSDRFj7yG2GkwTd6AD18nSnufwFsneAmb+N6Ex
	qmfJN+Em5T0HxwYIJPPAprEsCllcC8zqle154Q9Jg/mWPnoi7Q+5bjxk0zW1uHNklEq
	18xrpzis79r2k+AxowW1bgvZQjnOZ1ynugU1j1Zg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654448460;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F8cGFtuKTpPLAF5FF9/Sa6DLHSrLf2VtO7qB9HFoazs=;
	b=ZkY8ftu0boQRQWOsFi2pMcAhcvxHD/QyYqMWQJI/aon01CWl4f9MohCvggGuSeUD
	ib/gF6l5xJ1qeNUS2g1cSn4sDbSu84Bu/djUroAUMbbkeAaa958pYH853/5cYO5IQGY
	N3sSJY89/vsz+M1Tos5qkngJh2w+nfT46+UOazIE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018134d00e0d-a723481c-de8c-4569-b06f-4cc10d29f92f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5159c388dce2f3f0a86660d8c7209005910a9e32e5af2b9788f2cba9afc4d28
Date: Sun, 5 Jun 2022 17:01:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654448459
