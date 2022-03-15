Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513347A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 03:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647316584;
	h=To:Subject:From:Message-Id:Date;
	bh=0Ur9bqqRrH3B7Raf7orvnobKLpIoFzRJwuI5RqHNRVQ=;
	b=hL9vqipQHDuw4ebXZhNpT4TS2ivaz2XkNLxpWH59QmgocYaeJr4U/RptcS0KOulP
	AM/xjKHK9kJYNHI/TiDZruSs7BUQiLHVS7NNtbenxVK48NJE7PgXTWgaU4Hxli7SxtZ
	EEYbYFeZwRO0WjKJL2PzPVco60vIrfLdEO6H1DYM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647316584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Ur9bqqRrH3B7Raf7orvnobKLpIoFzRJwuI5RqHNRVQ=;
	b=Z9u5OzKywRYUHB3SMpemVtL8TsyPaRzR5r8WCKmKaEyrq0QQZpwAFx7dQ/rmIwd1
	siN8sv6YBRme8HwTLagOfCXna25jL3jLbTf+usovfCjELY76vXL525VvdxWJ0TSFbC6
	VY0f2glkAhxMAd+juT6VYZ+Jh+wzqMC2OZKa1Tuc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8bb8492a-63b81007-bf35-4766-9139-a54199e91be4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 674217cfe69b5756ca233c00330e3f62c18dc2988d479c89aa8c03e11a1cdce0
Date: Tue, 15 Mar 2022 03:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647316584
