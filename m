Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C3AE33D3
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647782784;
	h=To:Subject:From:Message-Id:Date;
	bh=ChKSJbZjBwwYoj/SXy1JiIUdrj/4+Dfm2CC8cq1P/bo=;
	b=eNirE+yfU+3kEQ2R4+etPK41phM59BztT1SX407BiXYEUVFdgF88vaeRDOzoVG1j
	/tn42M01x9hGXKBXDVDYNDy/eJKVjJ7CSXI5+kL0VNQVWL4FmBY88MgEIJRLm56Vd3U
	Jxy0WHgPVjVu2AW9UDDFTQ65rI12SbtekrnsqpP0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647782784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ChKSJbZjBwwYoj/SXy1JiIUdrj/4+Dfm2CC8cq1P/bo=;
	b=DK+3AEiGT2BDzxJupPTLvZcrobFsD+yHGE4ae9riBY2bRnpFTrWzOXZMxxoetIVo
	fdP7iqVMi58R9dA3iTXKsUfrPnpuGH+hKRYkd6rHoyoWpkI4s/HBoLDR82UW+Kqe57N
	CDDrhq7+ApIhGRZVizidHgJgJWbUBBearGnJEMkY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa781eeda-69bb528a-1f60-4797-b546-1b510f25f832-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06bc793aeb8e920bf0bceccc91a4d4ba522f5815aa227ab19c2b2531081e563e
Date: Sun, 20 Mar 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647782784
