Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BA8C88
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 04:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645678285;
	h=To:Subject:From:Message-Id:Date;
	bh=mxwar9MeuWtWRWDkRrKc4f8XilCVmyD77DcgLldJanU=;
	b=lpVv8FYsyAsSruab6wS53oYLC81tq4uBK+5Nz4JOBXOazy5lSuPh+aSbaGRumMVM
	P44cLyajdQQ03oGQuQRiEkvqMDUE5ZxVyvcSEnhSLbcehauqtJG0rbKrkcRzFig5quk
	U0P2jk0ao6D9jHwBf2H2i51Gg1IuHxivGPiYCsxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645678285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mxwar9MeuWtWRWDkRrKc4f8XilCVmyD77DcgLldJanU=;
	b=ZqwtWZ+PrI+ABoCxi6QIpuS2Wra9hjtcAd1PNgq9I2TBMQRVOtxxgTNjaG2+fYHT
	+FCVqvfsRS83v0yoxXgb7Bkelm27RKtWYINfIK8PiCRvF+ZlYszs2hYvaSMjAwgRP1u
	ajCw/LlYaIzJ8jZaghBwXTLO3Hht7o1cEDRab0/A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2a11cfb8-8f45aaa2-7e1b-41ff-8a10-c4b7a80855ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eda9f93cc08d7206510a6093fbe3760607d469700002135364d9ddd7d03aa776
Date: Thu, 24 Feb 2022 04:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645678284
