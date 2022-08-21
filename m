Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C677B36A
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661041853;
	h=To:Subject:From:Message-Id:Date;
	bh=R7YxiG5EWVL3PhKnbSVS1ALycTHF8Ard1o93Aqm5+3k=;
	b=PxX+xXDVI3h3Ocvnj0+68Hw/fbBNb5xyZGosgNxQtA6Q54gTxhjW8XoZvcGMoU3x
	a11qr7NVpXDxbsKlPASB+PV0tvq5I0y8VteNJD8ve6XTIAH0rjuEYvoyzNEKzzUwnzg
	3iR3PFqGX1gjMX2hJrdn6L84cotCxShHlzIoZkaQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661041853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R7YxiG5EWVL3PhKnbSVS1ALycTHF8Ard1o93Aqm5+3k=;
	b=Mgu6z7Y6TNqY0t7I5oLBPp6ftEF+Lgq4TqlEji4xiX6KssonKfxaWTya40WCJhN9
	jEmnXThm7EbWgb226cTzLkrXMG7DGgZl9oI9NJU6DHmfhhqE1qMzFqk6UZBljo+dt2p
	6b1PKSdPDUag6hhmNtRSoFO6R4MmFbk5WEoXho30=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bdcf40b8-c27c2d9d-8cfa-4bf6-bd59-4f01ace1bedd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e6bbcd1c604c87740786fd4a5bade17491ecf64d6b4693c3c0883634eccaefa
Date: Sun, 21 Aug 2022 00:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661041852
