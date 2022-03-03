Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD16136B
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 19:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646336485;
	h=To:Subject:From:Message-Id:Date;
	bh=nssRo07MQ4h6p3PkhB6NIlTYzugsd2SBq1jCKKjVUOs=;
	b=ixf0vAHPwfWjnxHWvJrWkNyhmK9F28Myr2dbHa21rl3kSBNMyxUz+RyzR7qCIsP/
	T/S9F/P/IrqPO8Pt7CO6rMgDO4XJxV8J0zQ170G7u93087P8iVWzNTRG4muN7xpbtVo
	ZnSZ+MOe50/X7L6b9YntlUNokddjeolxn5bTj0A8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646336485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nssRo07MQ4h6p3PkhB6NIlTYzugsd2SBq1jCKKjVUOs=;
	b=OydHFdYPAZ9+cyCE67moT3nrDPNYP7q6hct9pcxHdvf13w1pqjQ2KSpq73prX6N8
	nLezJ56b1A+Cd3hCH+C8GTJYGZLXvXQlTbsyM7Zh4I/tStQ1hJe7h6TKR/XXDMXNoUR
	1OLiKnKFBI1vFXCvVdYJcTfDHWBdjolQVGcFwdIc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f514d25bf-be37bfbb-6ac9-4bd6-bd31-358beb6a73f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b4d2c8efff7c6cd44a5523dc0fe3e4a775dadbb0a042587590d1efd7d359fc7
Date: Thu, 3 Mar 2022 19:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646336484
