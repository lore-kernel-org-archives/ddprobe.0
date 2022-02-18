Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8948A3237
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645168584;
	h=To:Subject:From:Message-Id:Date;
	bh=2YwKiOsPc+oOzVI6YKpHqrNGuThkLLoTi/mc0pibapY=;
	b=dOLjXKWOP66pFue2MLrUGEX9osmkDkCT3iAks+vzfnc97AnylJ14yw5BEZfr7rKh
	tOBtYUrDqOpDGCLwMbjCj4DmIyLBT7D2zOlt0J0EBtXhumRCftsJwZ5csfe0dxy/nQ9
	jlGny/M/WrAwcLEZ+SL5qIvl+13lc3oS6AR+nflY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645168584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2YwKiOsPc+oOzVI6YKpHqrNGuThkLLoTi/mc0pibapY=;
	b=mDmaewqeRkInZxpNaaJxfcO7+ikyisx86ki+HAf7mQCGVaK1nTBvxlSpCYvvyl84
	ro6Ay6+AOutPQWAMVsUugqEmbNoAeHAjuzJaVaNamD3khAmaOLyJbr4OfZwNR6X5mmt
	X6sDi1SHpuXAABmIkV9qzwfPNxEI41IB1u1EP7KE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0bb06825-193b15af-974f-45ea-a5e2-9b4e0303c5da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b78dc9744079d0fec6736411c5422169307356a77dbf8d207a31b934346ff7c
Date: Fri, 18 Feb 2022 07:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645168584
