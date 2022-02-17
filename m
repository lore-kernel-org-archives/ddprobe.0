Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 730E038F9
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645066585;
	h=To:Subject:From:Message-Id:Date;
	bh=oJkRcVC/NY6HbUCsrcghCgq1Xg4FToCTjqtsKSvjaJY=;
	b=LYidldK4Clt2FUUkYx7bGYh6dQzimo8oKG5h39YK8rIhb+DFliRFloErMlCKAijD
	lxvpmH0PJZVLwOwTwzmvXw8ok3xVFlqMlAhLrxvUn2Srv+4Qh82CMfxkWQ4fvffkamk
	DmekE+ODQOp1SmD92PjSEwLYypoZgEcroEZx8cCw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645066585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oJkRcVC/NY6HbUCsrcghCgq1Xg4FToCTjqtsKSvjaJY=;
	b=cvEFIECWPvGN4w8xqjJ/2z6Gbs7AfHePYdikT2RVz5P2ailjT9F4KEtEzL0OXKj0
	a3r/Y56erxj91vB3FmX7nrDkiXiIuLltgzKgYcYqryWzw75XBnw8Zkt6tw6WIsDsn5A
	vD2SzuWfvFBwTVSPGVaenam2wc6iBkb5fWnTxenI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f059c02f5-e34c9ab6-483f-4a75-ad41-47cf0d3e5331-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b091a81d256720768afdf8c28f1482548c96fc0e1d10cd07fee14044e7d8410
Date: Thu, 17 Feb 2022 02:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645066584
