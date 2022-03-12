Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815C22F50
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 09:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647078384;
	h=To:Subject:From:Message-Id:Date;
	bh=hbzjywf/0eCYuWTp9f/PyScp2M4MrQKgc4eadT0nbSw=;
	b=D0ra4t8fNl8JYzZc28Um4em8OamfNVZ2qb+nGfqWTxGDv84hCbZwsOoYCkaJ9e1W
	g8dS1NSXXz4gFfkFFimZOvjWuElCDeGHzFg3S7f5bURmcSepEAQQ36+SGhVxJ06OxQe
	RczAfGz/rbfmPGO//gBVcGSsQvb93/b/UuI1CtrU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647078384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hbzjywf/0eCYuWTp9f/PyScp2M4MrQKgc4eadT0nbSw=;
	b=XCPl1X4fhfipQKs3AgEmMHHBwBmRVfHhkorDv11pRIbxFBKOWQfEmBqOGpt+/pPE
	bKifejiQ8rzra0XBqdTzSckb7k8vEQQJVhVLy2k0m9E9jEyuPSwyJsXHakMirCSEAdt
	e3ni4qkXA4WjzfGK5uboQvB6XZxSq9PTIgL83dQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d85a498-a69fa19f-f683-450d-8850-4ad70243e00c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d7ea90f7d1350fd6ccb325b3cd2fcc24fbad0f784c9e4933625267071b377be
Date: Sat, 12 Mar 2022 09:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647078384
