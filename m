Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C6C310EA
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 01:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653526980;
	h=To:Subject:From:Message-Id:Date;
	bh=WA+8zLfdFIXZmLn3FTMAHLxSn4tepeaELLEA5+B5XNM=;
	b=Co4UbCulXFvqqpS8WTs9tnPdLedNUidPTq0YHSuDQujPl5DDtk6WBLKQOB3g073H
	XDa9XMfhzLRNvY7gzI9LC3fFEdStGPiV3jUy+++ScylRq0S3fGCiTMaIdObypRFBrl5
	20qo0AJT9r2xgSHULURB5bUaPGt4XuGsO1YBg0t0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653526980;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WA+8zLfdFIXZmLn3FTMAHLxSn4tepeaELLEA5+B5XNM=;
	b=d/Jm0hDGDhr3UPmTV9okLXH7Qu3Yu904m8q2URZEtQLlPj53Ov6eiW1NinB3+K0e
	0t8C/GKHxuTM0QHJBIqs5lX7NmaTeo8jmCbz7pfT8O2Bop7lyGaUoj7mltKzapV4wvD
	cWexPR/Bij4qn3Vs6WRnR/3EtSI8lNREZ/ebCrx8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fde36314-b6e3bdb7-2bb5-4292-9aca-6152d9126c80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a03874637e572eb756c805639f7b548be08c7742889056c8ea3a05714170296f
Date: Thu, 26 May 2022 01:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653526979
