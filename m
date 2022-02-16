Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E63638C0
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645051284;
	h=To:Subject:From:Message-Id:Date;
	bh=2QejH/7uvHpov/VlnQ7dcoz09/o+vrj3STMhbZurFXU=;
	b=KTAd5H5vFvbtYi5Oq8FxkJewBPsj8hLdGB/lzgcW6lAOJ77X/mRwnSJYg1INSVtS
	X6uiX0/h4ui35ZAGcQMg6tj3u0f6WJH5ManNcZX+mxeAdubYucmLAx7SMFdxwFEOIUZ
	GdapY5anR0sQT9qJsHdKb094u/YdIfGWl4lC2x8w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645051284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2QejH/7uvHpov/VlnQ7dcoz09/o+vrj3STMhbZurFXU=;
	b=Eb/8f6BUQSvv2vkKnPG4uHgJx6JiBxHp83AnAcStvW5Z1wGbd9PiJ6KKaxS+5bOY
	fl7tmjrJI9G11iVHanceWqB4M8yru+nNIpScOJp347PSQu9ee+HV1H0TyjG5kL5SA27
	G47MPE74XoQ/sYwJb5hHttdPN3Cd8Dl1X82hNQYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f04b28d39-0091021a-8832-4ea2-9e92-3bb469479eea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4b2bf34b2d2695275c42f7ff37989241068c59afaf41d0debc02d50970310c5
Date: Wed, 16 Feb 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645051284
