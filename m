Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFF07C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 07:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655276579;
	h=To:Subject:From:Message-Id:Date;
	bh=egoFpers0lg1WaDtx8DN7k01H3ePPTeAeM6pfYdsIoM=;
	b=jDbh4+8Vb4z5Ysr7XWWiQsa4cy2qp3qxDAem6ELDfVIf5p7vQXL82nL+OHPzS2ix
	pokG7o2GHg10StC18TXnMtlxiaAD0LVQMJpzJ9Unh1QnVSgsCymD8IpT2IzZv/J0PE+
	Bar4AmVAowc5yNjzv9uHdTAvSuCbe8ay3a2y/jyw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655276579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=egoFpers0lg1WaDtx8DN7k01H3ePPTeAeM6pfYdsIoM=;
	b=DGKyagJ81SXSLhiKwOrNOvXvmhpwnGOjJFYnQTxHXXhCAIF5rJdpxgqUa54qEaAW
	MYZVH5DIUUatT+7+FrrmIPXybODgTNZpOyFOxvmiLMc1VIm/d5W3G25elcqFt3OqeP4
	p2gkXiomhFJO7bTUHMQngHntHMTlUnKRKe9mJN5I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181662c29af-203cbb9a-0247-4a59-802a-2fd73955ec63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3df5dfb9a33a2389eb803f917ccd8a946aa5f269f88e4221b1696409606c2304
Date: Wed, 15 Jun 2022 07:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655276579
