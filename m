Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F537A
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 02:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646534185;
	h=To:Subject:From:Message-Id:Date;
	bh=bc+J6y7AecIAxNxwZIOlie1qqwjtppqfL6fR2n6+guM=;
	b=flwTXuLz5S8CFAQwYsQZFB6qlZKeSrYOZwsmmH7icgdMyb0tP3cD3TW1jFkJ7C8d
	tcMyGyE/pTwgKYNXXLKBxAd93kjRWptrJJiUocPTNS2bz5tlSyFxdG4O78foRsqYVI9
	XmxV5UtZ2NrwmMbKZwS4pIqblfhJuzh7BHJdV6V0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646534185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bc+J6y7AecIAxNxwZIOlie1qqwjtppqfL6fR2n6+guM=;
	b=A8hXinw0KEO2AggfmOCWJcIocZP3zwwcTJqfr6iKpJYzL/fATp7Sj7iOLhFwnKcN
	FKyMr5nI5DiOwqEIRHoQdlmZZcTARZlzT0TpF9dGSGtu9gETcBCy4YRpGtTYiTmVSn0
	laHqbZ0c/p5ps0+Mh7ldyiqFfg1aw1BZRRUClQGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5d15cf19-6eab0a45-9995-443a-b1a7-a98e92c2a4a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d20fa5049e1b486f8f55da29506156b9258f4dd9afef43035ebfa5cad74cf20
Date: Sun, 6 Mar 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646534184
