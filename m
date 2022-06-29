Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B326AA2
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656536812;
	h=To:Subject:From:Message-Id:Date;
	bh=KgOxQm6seu0RM0yTh6KcUfH+VQYvFNzyg7AVqfPeijg=;
	b=TJbg5YdoC/j7zbzDf2Jzb39eixNamEUjfJYP5kEHiRzfc4jKK1wCevf9s2mBqxAH
	uK51T+8lO5vBdKQ1JanZRS/D85ixlBMPzXh9B3a5TxC0AzPhRyXWMPuAC6NeEP5qMWt
	2r5Un1xPG07vkEDrcLCnWqmkCTGMyUkJPGtdWxuw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656536812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KgOxQm6seu0RM0yTh6KcUfH+VQYvFNzyg7AVqfPeijg=;
	b=VkaTGYuFNNXG1Z+ZKIosKDjY+I4KdBBuBId7a4dz6BVDpUq/v8LyHjwOoYJMq6WP
	RYFzS8TwQ2ut/uLRhYNqSF/kGm76XC8yIDVnVNU6K3tgtYhMrH7hJUqLHrpQa7VXIVK
	OEB30WCf7kB8etlpEOs3SzqvWMSiFdBUTez+E2dQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b149cb53-1715e8e3-e180-4440-b9bb-18ee28c49298-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2f854edb231895aaeafa08bc79dc9b77126ebffb7bccb3f61cf844bb3d1f61c
Date: Wed, 29 Jun 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656536812
