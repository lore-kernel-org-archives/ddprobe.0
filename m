Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A1AF7E
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646952084;
	h=To:Subject:From:Message-Id:Date;
	bh=nnqwm7lqq2M649Th7WTmgopG9lwZNQkwXLV24IxWPu4=;
	b=U8JCzQ7oa2M0ft9ZEPUFR3IZJsvHsWzYyt2RuyqP9M5x4mhoinZT41N3Xx/WHGCf
	j2snxbRc4+8O9MNLCWzdh0cH8Y2CiF7RuOKWPFrw4BBafnEXxnqlJRGE+pNyPJj4beH
	t5pzrB26XsriRyydHiX8fiMTixoxPveGQErB2/7Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646952084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nnqwm7lqq2M649Th7WTmgopG9lwZNQkwXLV24IxWPu4=;
	b=G9SdwVhqGIuz7uiOmF1XmiP5EIak3c/cWDLCAVrkgqlSNH0CQMgT/5S+Wq6lJIbs
	Xj40fF+EhEydMXmm8GUnFkbqmuUADzRsF1wSPFDSK9TaHreQuAVqoLWOwd48NXqkSvo
	x5XYHysk+5TFuUFoqaMx/bXeCPboPJoHDTJkhgP0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75fe7519-d8e08811-57f8-47ee-9cb3-a75ed0e72d72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99fc406ea42c445173e6d62901d137097c89b1712194595948ab733171f50dc2
Date: Thu, 10 Mar 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646952084
