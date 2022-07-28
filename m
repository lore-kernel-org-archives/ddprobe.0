Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5926D10F6
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658985652;
	h=To:Subject:From:Message-Id:Date;
	bh=1CnhbRjiBJBh8B+UPRTYgZDz8L9UuksH4J5RQjieTCY=;
	b=JH61U4bGTFEBgY7dEThmUB09wKaMaq+N0AIKrMJOpECo0I3p8ZTTyiofWSW0bsAF
	pUv8p23Agj6uGDH1WmS4A4scvMLKqjYsGEGYrEL50iqHt5MJo9R1vrxa85YmAnU9I2O
	RyhxB2axsGY9qhI4vg754b7hut3AYlwL4t/P22w8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658985652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1CnhbRjiBJBh8B+UPRTYgZDz8L9UuksH4J5RQjieTCY=;
	b=D5yFEBSUIGHs1FlPVADpRNTnMpSaFChU01izC1CdHu0cgNquzcr/L8Bpcft2rhQh
	uJNfn4bYAf7J4aduglevjfrGbvlRkp9Y1P/1Q4Nb6giGSbqnUlbNXSsV+CHLk0c6HgS
	6Swg3PzCZujAeYuUrn2DlQKyOlgDDUekyh3GxFNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182434021b8-090b62a7-ae9c-4e80-bd1d-f509c2b8bc55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0fef2d6246c19bfb8db6f8108cc2f7885501954492c81e0dcd06342352b6811
Date: Thu, 28 Jul 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658985652
