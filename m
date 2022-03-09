Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91D5C7A
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646803284;
	h=To:Subject:From:Message-Id:Date;
	bh=2UelZ1IX1bqy2IoaMY4rfhuyl5aBki8gxQgJ7I2wYLY=;
	b=LLqHyz5OFKud++tjOw2lhhc7GlsKQrSOL/DZQhWxP+MMZnxPv3rk2sFZPMq890Up
	g6hG1Zxe2xmVHTu+8kc8Op5vA5v5gAcDOJQxQgYrROrCUhT5ys2tCkKhSyrCXp/VvlV
	3vzQmsdM873s66wji+zdDIy66tppg1aSA9jTnpZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646803284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2UelZ1IX1bqy2IoaMY4rfhuyl5aBki8gxQgJ7I2wYLY=;
	b=Hup38lvIiq5/x2mUUnv0Pp8S0OUlZfjxYcksSK6Y9dOnYVnSMWUMToERVGpUP7TP
	dsBkoW/JUNcaMuUvZ04x+d19y/Kxs5LYGZD1emAZ04mZf7aE4m9aaBADC+dGiKzz7gq
	jWpqnFgHqIHbSQwgqcX0pa5BrgjnuwwwOfqEBAQU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6d1ff2db-1021871e-a246-4185-ac85-071aed179da9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a12b11b2f9f581ea39ffaa56fa9996f6d9c85749284393df7b71e1a9f09c53e
Date: Wed, 9 Mar 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646803284
