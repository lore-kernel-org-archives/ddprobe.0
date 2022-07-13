Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1838C4681
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657729012;
	h=To:Subject:From:Message-Id:Date;
	bh=TGmtmJrdH2jOmE3CuMKS2CehJQbUroQ1+JU5ayIImks=;
	b=JXw1aSPeuJ12lunMk7ALc2lWQc9gjPAhxhe4LERmvkQlYc4E7Re43ZrXgpXXYf0n
	vN/CztGDQndqzRRrdTAaoE2WLnjxNRooV/WV3AVyAuRZs3jftlQCvImJ0qColCQc0gc
	KWQvchxbBeIx2mtjWQtfKamfv8Y7eiGN+NIj4emk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657729012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TGmtmJrdH2jOmE3CuMKS2CehJQbUroQ1+JU5ayIImks=;
	b=QwEjS9LqK2TwIOwnC7oScG8FFQHJu0zaGUAdXyJXl/sD4oxZInznqA+r5YgnY0Cn
	jtsJ61AultCMOzwYHvWDUrR3nWQhy6Ke/v3dcgTm99ReoGvaS5qJUkRA+DWB9PnAUkX
	gM6+Dh1rs7Z5SgAtjrv3H5aqvh5jdCsYn1/3eAhU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f859524e-33de4cb6-2f4a-4e90-9e84-6e6bac408e29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33226412e5306c890f99118c46776946f0a372edea922e2d18bd93c68c47feb2
Date: Wed, 13 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657729012
