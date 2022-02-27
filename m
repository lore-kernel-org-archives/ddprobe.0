Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6B3B4A83
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645978285;
	h=To:Subject:From:Message-Id:Date;
	bh=savbBKiacbNBCjxgtzXopnMPoQOeNrNy7gWSwzGW+kk=;
	b=EQoJwR8HJdkbIZJyKEeuX2qzMU30b1YuE7guVhrslf5gM/51PZSQJZ/3hW2RZs8s
	8XV5nnUtDQ7Y4omx/QDHod/zs4O6WxWu7RbEfQXy1ZpknXQgKt1bctRIkS5Y8HPJLcr
	VYDGZM69EC9m3i5oTwegcS/VkSN1FRjV3Pm3wzOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645978285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=savbBKiacbNBCjxgtzXopnMPoQOeNrNy7gWSwzGW+kk=;
	b=WhwyzxUgLmzZeWmg2fDPUc2yyAk3lYVi2lDMShxW4LIILdfDTSKe6ZRhKMVeSCTL
	m3wi6fIGkQHP1sKBScdmIrn8UbRcAVx/M9K2H2aWtqGF3NcKPnVMneDryrpJHX6v+r0
	3vQ6ZgIcOJD4JtmkWmj8/pGX6vrquVL5QxHRtYHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3bf372df-cc400fdd-f634-44fa-a9c3-9c53b2f58522-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95be75271fa839ad418952cca37fa01d5005347e3c6c725390f7aae9051c346f
Date: Sun, 27 Feb 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645978284
