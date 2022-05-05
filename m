Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B994623
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 11:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651750438;
	h=To:Subject:From:Message-Id:Date;
	bh=xNo8MaBFGcoueCw3jCUxWyAOzQHAYyU4ed8CaICFCGI=;
	b=ZBfbPR9S1asaRc3dSM6Fw+WHm+0pDVmfk1n4/u2jIn7zmwkigUk+aWVBGkH9/C8p
	bnadJ7vY2OYDFTF7C4KI9eikbdhAYgSdhV02YKgbPRaG+cSJoTo5lbLtt8yrMWaDgF1
	lmLk9TQFSrz/LBQo5LVykagitdhIoA1t4ohN1uZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651750438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xNo8MaBFGcoueCw3jCUxWyAOzQHAYyU4ed8CaICFCGI=;
	b=XvgiS7J4AhXPqML1LC5NLJ+Yxgy5aiqb/I8ooJ0K5rQzSjKRbyPfLYJDoehxDBs4
	NTUg3LqQRivZStG09Wfrtks34fCN5zZ0Ocu6bGmq74wK4SPKgtlBzsiv2d6BTsGq14B
	Jx4vpFuimmRDaWrBLE0jaX0XLJLWhYAsitjfyB48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018093ff8597-8eb57853-18fb-4fd1-b067-4cb2b6bfa71a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 653c4b9542fb2b09c68606e177ef4546ec1c0d31cc2021b27ea0c475a51e8cc5
Date: Thu, 5 May 2022 11:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651750438
