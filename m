Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF5A2F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645955784;
	h=To:Subject:From:Message-Id:Date;
	bh=8Ibu2IXGDQms+YXUUZrdDAOvauc/NHCIu2VfTa4K8H4=;
	b=PnfZ3QQFFJnU/WsOnrWi3R1Np66oFvSfXa0e9+vIdiej/8Oyoo78qWTGK/eyRsd2
	IOSvlQM2+TI5ijcJ+vOCX1gGi/bo2z6eWLW21b3OmATLaZrZ3kQO2UPb/gX9ufA1Gls
	V2G069/xGNm5HAwMda/XVUhgZuZN9G9x8+HsCFMg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645955784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8Ibu2IXGDQms+YXUUZrdDAOvauc/NHCIu2VfTa4K8H4=;
	b=bsHx3+yzlXfehdCns3mRDa/ggj5nEOLpghqfo+rIS6GY2qfQCR1kHujaGmaPgppY
	KbZVBho1jEAlSQeYwHIRjrRPf9hfZrPp1GdnkhIdSKeN8NQ/X2kcLo8xKhqm2EVwg6K
	99kTDK3E9hz0I3Pj/aJzasXX18k85ML5I6DKPVvo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a9c2020-129b3e77-f8c3-40cf-a5da-8d377704f4f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ed2659f0182116c3e8a9e679651e9a317c4933dd43394a962df1e78cdcfdb5f
Date: Sun, 27 Feb 2022 09:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645955784
