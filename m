Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761BCEC6
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658968852;
	h=To:Subject:From:Message-Id:Date;
	bh=r7fHZn61CdpUO2wwoJ0/ffxNSKqvyr/L0V7tDloGQjc=;
	b=etDlIVqM4EZcpOh1gYJBfiT7FFfH0Si1Z7FwDWxqnI1SZ0z398UWWUK3LhCawBX6
	iiTVi6d/VooQg5PrGfVV3utR0dWB5cQqqYVlIfbTqviaHit1QuxO7waJSMwEY6uxeiE
	kyagk6EO4JOgHrIHUYQjlpesXDWATm8HYkxft91c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658968852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r7fHZn61CdpUO2wwoJ0/ffxNSKqvyr/L0V7tDloGQjc=;
	b=aOZJWsh7ie0SVV5ycE7pcsRcW5EFB3HyKSRtfMrN7sioI3L4EtvxG75KWqJFW6ht
	L7tCURML9edIo8JXabDx5Vh2BqkQmrqI0SEx5cOH005hjCMwNJArmrYtEh26h9D4/sh
	covrHj2uCQ2DvqjE9I//4UBNeOF4EMY570V3OyRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182423fc892-0f2558dc-0b0d-4030-bdde-36014fa980da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be22c7a8406429d83adf89e970c027c93bd8a6d47529db53b54a5e296fe2b181
Date: Thu, 28 Jul 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658968852
