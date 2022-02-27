Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DA067C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 05:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645941085;
	h=To:Subject:From:Message-Id:Date;
	bh=K7srN669ENbLu2iTULGHSKEudmrfCpnT+Z7S+/7gHrQ=;
	b=SHL87bBvRVo+wdXe23JJAgnlvtJZTy+g2ioA7+hZdqZu8mCbZTMLrOhFic5vDgWx
	CbPUC306dCydomcfWhp3nUe17v3Lw0mXP8mOVBBDZPcSc8iJ8YtQoPzXlsJ0lJWNwho
	UJnf8L0gXuIJp8gXmvNqlgQstM3IjKgchrVg3fTU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645941085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K7srN669ENbLu2iTULGHSKEudmrfCpnT+Z7S+/7gHrQ=;
	b=OYFU8lhY4sNqLBg7F7AgrycaULY09RasP7uZl7FgunA709m/B5NEIuRJAw5CA2I4
	8HNOAgzjYNG2Eyp+76M+4EEXU69aVL7R8/966QapTrZRDHelAgs/gEGUpatq8GZmLF+
	sI9fadm1VOQU/BU5px/E9Mv8T45ERRiS2LyynSCY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39bbd27a-168adca8-d69f-43d0-8bb9-5d0f9c4508bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60ceb0bfde6fe9dee4baab69565becc0ba5ee999cc4fc1cfb454c3a968153ab5
Date: Sun, 27 Feb 2022 05:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645941084
