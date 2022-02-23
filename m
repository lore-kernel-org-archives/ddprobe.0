Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B783800
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645593384;
	h=To:Subject:From:Message-Id:Date;
	bh=HCT9nc3XdIj+nEy4eYsHpQwCkLgmJfwyDIF9RXV1BAI=;
	b=BcvkG/LBmGBRLb25QXWT+dtWiWhbWIh1/1kWGJR0Ocsk+qXWHaJCKsHT/6z9IbDQ
	JS8bkPrdBuSO6tCliXF/vmr3nfdL0uv4Jym60junCjwtsuMl62e+GAk+VGqvQ8BCr90
	QK4gFIn100jv6hYaGI/H/C6B6sS5iJQ2dadWDLbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645593384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HCT9nc3XdIj+nEy4eYsHpQwCkLgmJfwyDIF9RXV1BAI=;
	b=bcCDEKG7GujoF8SJB2j/X4i30GtdQboNbPx4takyZ08oNB4yB5fIFx/3rgatvkWw
	CQkyv7YUNxpSWPhTab2sfqVE06AN3dvHhBu4Z1wOLy51F4xv05SPHmiuCG6Yl4UcxUS
	ICw+9JRzM70HySKmSwoeg1nDcnEfgotO9u57Q/tA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f25025739-7b555067-a423-4230-9da0-6b60157c049b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c5ad9feea63fac9309bf177ba6b4aab6a68a39707c77abc13adc8c0e4e5b85e
Date: Wed, 23 Feb 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645593384
