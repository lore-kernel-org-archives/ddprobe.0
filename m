Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 712707B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 12:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655554739;
	h=To:Subject:From:Message-Id:Date;
	bh=kk1akiYJQ54xRwCaG77hfIO+34lV6lCr2jdkNNNz1fc=;
	b=leBReXwAi0IwHin7hsry0ksHy1qADvxARRtjC0E3wfXOkV09N468vkA9tMAKDReK
	gkaNS1tN3IecTBeHSVtpXNnXSeD1NR/8V8rsw9BSN7GO2Gh/oIlanGAe2ZfNCtJHTOz
	Fj8xIwkecL6WZJ9ThVCp4aQpDKtNLoLdZIC6YdhQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655554739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kk1akiYJQ54xRwCaG77hfIO+34lV6lCr2jdkNNNz1fc=;
	b=EDYNBetFQ8Tg7Hdd858AgmNeSebZocBEmZ13tG9zGJxOW5PTzN0sMYafxgJal0Jj
	CFg1wuxuIQo/7Y2VdBF0eRhdI1XhSz2AKywGJLxoDrBiIHszvUBpskyqud5cu/RtlcI
	JvR6AK7PocFMYvDHSY8PbjoEi6D4QCd2D79Dtx7M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018176c08c0e-05bf15db-5778-4df7-8c65-6dd29427c0bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73b43f1ec783dc85ee0731efba9849b01bd1b182a499c0f69cd93051cf740893
Date: Sat, 18 Jun 2022 12:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655554738
