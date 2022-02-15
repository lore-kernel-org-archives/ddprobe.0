Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E8F1876
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644963984;
	h=To:Subject:From:Message-Id:Date;
	bh=SBdoIX9caSCj+0zhbHwTp4stIyp+wBGfK2Lwqm/DZiU=;
	b=ZRzBvXS8aOQMEgsSbb2rLMP5UFyIRPf2e6dMxl7eRU0jF0KuYyvW0Vclyqq/qWZN
	4uMCXG3vhrX1oyiz7qkwGYiNFu17gznwBghbWYdRIT1oz5IQGpZkqPqwRHqukAcn/LV
	rytVsOQQGmvKOVruELDWqWa488PHmoD2s0tnmfL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644963984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SBdoIX9caSCj+0zhbHwTp4stIyp+wBGfK2Lwqm/DZiU=;
	b=K3cdq2n0JZ5ajLRT9gBPTvVabXboCXtWoKFWc2jgq0Ll4nLIwpaqfZgR848FYRp9
	vTJps32VKLlgQ73S5XxRSTuHwkgMpGaxoNHZJs7tJsHHxWrlmWDx/p98+WdlNbtHDKa
	c72N8liz775Medt6vlLhzFcJWBbHxAuimZdduiOw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff7e75c6-ef560ec1-eb84-4a5f-9845-a8c80b17abc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9147ad72778b2e59925778fb54d45adef1ef22f6ac2009a5f223226531544bc
Date: Tue, 15 Feb 2022 22:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644963984
