Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BE5802
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 01:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653442139;
	h=To:Subject:From:Message-Id:Date;
	bh=W261DyPgYybBfG9YPHNOXXq4IaiHR4nHlw38xtgxoVw=;
	b=NyYfHQ3m/BWPEJoEUCw6j7i+7lbZciUbAZIl6AdUeLwt1OuN7g1OV/ml4De7j+jv
	lTStw/aynYf8nZZRWJS5zJJiViCFVlBjg70EuVwT4fX/ymcuynPnSmB28LWutWrg0z9
	8Bsww2G16LEgcUc7wgbRmGb0XecwbYQ2PGAtZB1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653442139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W261DyPgYybBfG9YPHNOXXq4IaiHR4nHlw38xtgxoVw=;
	b=et48Oyrpv0n53D5N6PjsW6REVD54wOJu9/qh0GIJOmwWUlpXo5icKigcG+S644Pf
	kbCMd7ZH7DR3kY2ntyXseoq/UTUV29mnWMfOEyMHQ8gfwMRuClf7pFKcwhqEiF9JgYG
	IG28TYEesMFwqq9fASJ85wkVWAoaovNkiV6tfYUM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f8d4d4a6-d57fd864-0e5e-4ce6-be8e-b67edbd19925-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbab1d9bcbb560c038b20e18ec437a07d161815259cfd3eb12ecb540fb918d6d
Date: Wed, 25 May 2022 01:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653442139
