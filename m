Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86197A
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646663185;
	h=To:Subject:From:Message-Id:Date;
	bh=sD0sudeHUe12gqtfYfUkDS9/kYZJUIgz7baT32gmFlg=;
	b=SMLa9qU6JCrB1P2rkuSFYHX68uc9EZ/uwIj6nHRr8RsmIvNVvAMQ7uQ5cmYEJpqG
	9+alnmaPZaitGszfd+kqZL6TEH/lBuOkmE6zZh6XeJbp+QozLg6NmudYvfSvS6HY0O0
	asM4Fhh6ch9l2Gio2uMZft0sCL6KQMQxfe7eL13Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646663185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sD0sudeHUe12gqtfYfUkDS9/kYZJUIgz7baT32gmFlg=;
	b=TE0DflS2+hp7aE8E+jsw7qyCOoJ3rO+EsQ8i2ktK8UakrwEJkJtdVii/AFPOKeN9
	YwTwUSUmRMB09ZlXrsaLQEpZ+nxPfhnJy6XGLwH37oSQejegTRLH0juXPPONQZnYTaf
	GEnKt1IqYsruC2PIX3thjgu15Xgo+JjkIfiLaXrc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f64c6329b-e594e417-db18-4fc3-b648-9b3d610c4592-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 647f325008ef769386f291371015280194249d5dfeb5a9dae44053a7f5d3cb66
Date: Mon, 7 Mar 2022 14:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646663184
