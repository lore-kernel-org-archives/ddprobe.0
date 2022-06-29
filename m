Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079727B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 17:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656524212;
	h=To:Subject:From:Message-Id:Date;
	bh=NnTGaL6KPQIb+VU9y8J45mFBpYxrlw6qvTu8kx8aq04=;
	b=JOlk4ZmVSbhY0ZljQGCgryQMPhsWwtijXVqEOipBD/UsCXDg5ovL9seFNEsAYL3/
	bw8WmAMT5flIMfPryA2wMBHuEVuAkisWPIhSo9FizBUMS2DKVJFBT4XHw7AyEcfXZut
	ueqDl3iWMibMJgYWgXDw4RWiIpfDaJrxx3hz4kN8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656524212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NnTGaL6KPQIb+VU9y8J45mFBpYxrlw6qvTu8kx8aq04=;
	b=VTtSQVyEgT+eFIG2owHldq5tx0A8ErKHiZJ30cPw5SAWIdUjSWkh7GbSMAa88MLP
	mV0NKJkzrHNohbLcRv4Gua4cNBennIdap/PYJzxuRfVH8A5SuRNFIXztWUHZolSq1T3
	gU471KHbWvZN/uq3YMAUV8Kgdftkl6HGRLQwZuME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b0898819-23975b1c-cc3c-485f-975a-6e612fb830ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b37222a4f362af4776433773d61b1edda3551d559cecc8548842223c393e80f
Date: Wed, 29 Jun 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656524212
