Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389F93D98
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659210052;
	h=To:Subject:From:Message-Id:Date;
	bh=+2G5Tmo5VredHcu72WfpoZsdFKPG32pw411affPonOA=;
	b=XH8/4MY4iS5qJlmanMWEOgbcoanufp2JPeEBV05XIr0DeKR4khPWkDN7g2dhb6Cp
	1ifVd66rVsajzVMauS6jbU/I9mIbmrRGUwUK8t3MRry2EMAd6PdnOl2JS5Ioj9cZyqo
	NjWMWbrzSpkvOQs7F7H9g9F131moQa6gnjHQHnEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659210052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+2G5Tmo5VredHcu72WfpoZsdFKPG32pw411affPonOA=;
	b=hcHq0STCXiX34ZaCwaSAa68OzVcFUdVJwTxEUMgunw59FCXXoccEtH13PUAxiu9l
	qSEL/Fi/4F63KAna3/e8hAauKc+/Y03Pgyig/c+xuhqrgcRLIkGaTbBBhZS3ztcu+FM
	VaY94D9eXw5/jdA1mR+ObtMl2kltpS2i1Q86+1IA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018250a033e5-e7577ad0-797c-48fc-8702-8b0e8b318bd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d72e8a91084b408d7a4048bae3e8e8c975e77f785a4dc6e5f56f18cbf8b38815
Date: Sat, 30 Jul 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659210052
