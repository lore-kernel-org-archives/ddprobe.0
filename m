Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7EC23AC
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 05:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652937839;
	h=To:Subject:From:Message-Id:Date;
	bh=0llA8+zzuq3ORdMbbR+E6CfChZEGI/pd6hNNPhhWoYI=;
	b=JDcn1Mhnc1J+GKjMPV1F9h+BibaMaQgqfLSPwTGo5daIJMUcmu5QIFTByyKb/NuS
	Y4yJ9q7BcZp2Hmvubqh8U+RmQQphp8Bw+etcMH/5IGSh3nag+zlBuT4+tcsr2SnRLMq
	p/o9qSSOXuifKd85R4Mw6y/KqhomHWaiRx+3ITqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652937839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0llA8+zzuq3ORdMbbR+E6CfChZEGI/pd6hNNPhhWoYI=;
	b=b47niul1+Ly4CIOBnZLHFYc5MOmLTuTkndllQKf1h6LsyFdsIRnx98ClQ9VYkjPW
	27f4CB1BKtCRIFI874GGw6j1PYfZfSRTTXSYVefG+XfUuF+jlY9n3rvPdleGzYdXLCT
	k6fPuMm6ZRPENHQCUk1lGzCOhqypLCr5M2sezocs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dac5d2c6-caa9a336-0cba-4ce4-800f-0613b56f3247-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffef3d7671bd06f3cdcd31720ac89b16259a0eb3b4ced8c5e24e41539e3db85b
Date: Thu, 19 May 2022 05:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652937839
