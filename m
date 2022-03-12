Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD4B36A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647076284;
	h=To:Subject:From:Message-Id:Date;
	bh=szlDWEwzqEPd0kbEsSdMT/KtDV0yKJyTuIksvBgZVuk=;
	b=UpThyLOBhd3OF4dJXtbXUb/q7smWC04yfTuqMtVRmnryMgmIMVh8ttKrE9pt8aik
	49da4ZUOfCPIJeiATqH9Nu2lZCt2qUea5DSPPN5HuBi2uQoowj4beHoys++rNY2ftFJ
	/tDnMVTHIU6b3anipe+BloAsB0GE4e2uGhlb0lUk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647076284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=szlDWEwzqEPd0kbEsSdMT/KtDV0yKJyTuIksvBgZVuk=;
	b=MvK2hPlcdaVM+69mVoRLyFDvJujrlqrRvzsv4kES/PpR/0jALPc6AbYzkCiZohke
	6Ms8nOmeMSnbUH3J8THoEY9fuEW3Y2t9AfCWLrQ/8+Xjxo2o5A6Dg396cxNMULYPihY
	fWC2oeKP8zi7yovjyooBWHCBonukIMnOtfEaliQ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d65996a-610ac3ed-735b-422f-9856-c8f2ba71e4bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 419d4050e22c9578bb49d7b1a2258a78ef8f548ed68bce942ecf1af6212ba2f7
Date: Sat, 12 Mar 2022 09:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647076284
