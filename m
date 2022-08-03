Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0EBE1364
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659535253;
	h=To:Subject:From:Message-Id:Date;
	bh=iZ5O2zndbmw1YkwQPiITjGXCGiQtsJrqt+/LUiroUiM=;
	b=BQg1dm4d9wFWEes3GX0jjoKJFs22Mzt0P6H3rZ4mK9ij2kpAMMMI2hetxY89vp9a
	9dz01uFLFsTSyP62QLOy8ICeungGMjNkXsyY6p3NzUSLaEWfXBPPyx+oxpOljQS4W8O
	4cnNCtYXWjgeGdXOGWGj8ip/D48iNySutpBaD7kM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659535253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iZ5O2zndbmw1YkwQPiITjGXCGiQtsJrqt+/LUiroUiM=;
	b=MqMPWSsmcrMTq4M1b0uxEpnvsuIWh+MCz1c4AGjLqxF42ir527H5sRyCg3WOjs1y
	bOOQdsTiRbNMBZfGwtDsnsD5QI8UMPjvOVHddEB1tn2vMl1w2junjEvcCC8IbSS9j73
	bT4zejw8wYnIpBfDfSTSR9RFO6b62HVLoeZdtYS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018264025c9a-14a69ef9-5233-4572-86a8-e1c4c9816e4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a87f7a3e2f49310c60edf84158abce8954657abbb684c15d32f42ac3ffe8d7e0
Date: Wed, 3 Aug 2022 14:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659535252
