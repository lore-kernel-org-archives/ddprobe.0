Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BE54629
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645135885;
	h=To:Subject:From:Message-Id:Date;
	bh=PDl87i92oD2e7hhzRPNoLkkomDjNcLXosc5Jkm05p2Y=;
	b=L8U7Eks+C5IlKMpupOy5lona/OZrKKJjup9dP3lg6aJz9Xjp0NqvzywGSBkam4Tp
	JMkaOZaA1BBypwEQj9pMnWGV6LR8p2FcoOuClNij0EHtI3vHD/u0zPmtMr+alpy9HP4
	JNXFf7gZ7b/r+FsDkmC8BCajzFO1feYk1a12NAY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645135885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PDl87i92oD2e7hhzRPNoLkkomDjNcLXosc5Jkm05p2Y=;
	b=A15uhxEJI0JRPI9iFLBM+somZNdY/HE5pbB9Kku5gKv0WRDYnK1/ttX54FVo+71s
	lbIw4JhzYtQuCICYBkW/ig9svlcd/VTwI2gktVdQWLiMwzfMrQeutcanmnTrD6Rk76v
	FTOXBIbllW+rqQnm5OdQEyTmdKZ/mKZdVhiNojkc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f09bd720e-97379281-91b3-4c32-8f98-aedaa2a925b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b7287be4647013bf08c16c6e09ecdc6c99ae011208ae6f2a9f49ca376773fea
Date: Thu, 17 Feb 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645135884
