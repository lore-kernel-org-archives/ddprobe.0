Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF113C1D
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657537012;
	h=To:Subject:From:Message-Id:Date;
	bh=a0sNCg3MDybgA+bnblFoygqEem1LVMWZXcHX2GAN75c=;
	b=iaFrfZlIu5juQE8wLSyGBWRj9QcivMkgwedxQ/CPcMzqTLHddbuUj98gitkzfE5t
	csqDfGQLAKiQ9+l5R38mh0+7fd5T+xvQS9jwSIl6yLbwQ15j8ZM4pNQYWI7e6OOVNab
	gVXDJrYl1S/VJLGELN423wO4/+WEqcWAq8mo8THw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657537012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a0sNCg3MDybgA+bnblFoygqEem1LVMWZXcHX2GAN75c=;
	b=Q564uoupPrTxM+2rvBqUOmHNRXZT1VM7Fd4yAv2IB+WwLK+oLeMBWBxOj+dH4ykM
	ydszZKpzKadK3J0Qz/KYthQUD25Bh0GvXyvqmSjCVZlHBastpBsVpKGcpU8xRtAlq38
	8ga50VDjm0x5SJKthaY3KKfpIx1x83r7hfKaZIbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ece7a215-e791a20d-8a89-4359-87e8-0bf6622bd26e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 456e4e84a97e8a1b66a076f8ca3904a8db554b2c39395e3d0e6e9ff7a0f057f2
Date: Mon, 11 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657537012
