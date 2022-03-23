Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2996AA0
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 22:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648073998;
	h=To:Subject:From:Message-Id:Date;
	bh=UwD7M0M+yj9F9mq3Z0a0wrSbEz7/pYXJEKlIZjA/yFI=;
	b=ZrcygZaKqhyF1r9f5OSQ7U/4CXSbAS8aWrDqS4ppgm/r6i9j7SicO15Gea3Tx3es
	AA98OEOKVwPgS1NDC6cnC4zuoORFrXJ4NJ5K4KPGQuQIxNoZ+BBtM1KdxKf+cV40Nk2
	bfz2ARVAPiNdC5M5eso3tFTBgzOkTZPZy4Gu9o/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648073998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UwD7M0M+yj9F9mq3Z0a0wrSbEz7/pYXJEKlIZjA/yFI=;
	b=dsqq2apnjVQbMVS4ENTA9/24ysWcGClu5sKDjtFYbM/+b4o6x4yHbOlsPLyeWv6W
	vUeRu/dMrkznoq9WfCCBL9+hQa8nupiicou4A8FICpNrjRA8A+dESl9Zx1X2ERKq1K0
	WVdllNcilcTrPZ+rx8jp73XnQFGu01asW4Fvpey0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb8dd7fe5-79832814-521a-4eed-ba54-33d98244de61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f535dfd1eba47895b9ba69382eb18988b9a5cb16f55a62ce6e0002b47562ab7
Date: Wed, 23 Mar 2022 22:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648073998
