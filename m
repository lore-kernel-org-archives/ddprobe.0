Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE6DB15A7
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 00:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652230679;
	h=To:Subject:From:Message-Id:Date;
	bh=MvaLIamr3AggDsV8kvXMqHv2inD2psBGFFIjrBNxp/4=;
	b=cey8KGRnOpYtWd4+VUS6KdDNUuOggyUCF+59SlGYQeAEaxHIWIHEDfMlXhPeq7pq
	JtxNCnst5Yi6khjcr0Bh5XrkCzw0bm93oAEh+1GhsUApHLZGvYaBkHOeKULvxpPB3e0
	iH9R39Hu9SIYUnqx4V7yo1Vpb43YOU2c3BJ6ADJ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652230679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MvaLIamr3AggDsV8kvXMqHv2inD2psBGFFIjrBNxp/4=;
	b=d0uIoa4yicC/WVvalx82bdFQ1A7GSs/3v3Z+xghGUwxPST9HOX4agDbClcQ1FEVl
	0RVgREJCd6/HuLya0DUaJAlQLM4Ilsveb0dRR662Yv31ukiaLL+Re+6JTbr8bMky9ad
	sTkHpY3cYC96Up8+1E3xxr3zuK0hBVeuXuMb/1RA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b09f6ac5-c572d1da-9d2b-4f59-b9c3-aa6d210935e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5a1db2f4f42551f700b9ede954c18010660c041b685ac7fdb68e9cbc5ff92eb
Date: Wed, 11 May 2022 00:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652230679
