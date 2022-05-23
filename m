Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6850E637
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 13:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653311759;
	h=To:Subject:From:Message-Id:Date;
	bh=CCc7WflsG3feGOApEpad1dDizGBp6jea61o2f/OqOic=;
	b=b58yDqmG4TjtX8Ewnucl/WZqBStxKpAmTJlogRM+7SV9snyje5KVsO01OWQSw9st
	ShK6uLqsK9TjoXv3uLd2lCMUoDDoRezfvmOwQQhaKIfSTjo+d+EnOEqwHjfCV/xt3Ey
	xU95NZqL9YivbeYV+zQ8Jq0Hs0UL+cZV2COrTAvA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653311759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CCc7WflsG3feGOApEpad1dDizGBp6jea61o2f/OqOic=;
	b=KjpEoZRZclStewywUoPZ1E7CLk1qtfifEt6Q48hzNVeBjAK+mq8jMB5tyKNt864t
	oautY0/8YFEmkPC/pRPhRuLlwOtmfSo1RqyXbpLPIKH6qw4Wkz2AB6w5rW2GnbB81Sy
	BU56SP17dS714w9uCPUFaisK8VU50aUbOZbM3cOU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f10f63a5-ba7c92e0-2245-40fc-a796-c507f0bd9735-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa37310efe7a0cb8fbb00158b3c8c4a818f5c8a51472ad744142e88dbecb056c
Date: Mon, 23 May 2022 13:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653311759
