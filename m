Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0811844
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644973284;
	h=To:Subject:From:Message-Id:Date;
	bh=8IECwCCb+qopn45MC9fmeUuD0a4u+FGeQjxbr9PxGt8=;
	b=gRwI78aFK+OoIKE0V2t2dOmYh/nNARV8k5/V6a/jsgmb+GbiMsBbfrgBwG6tpQPG
	+anrxnZby56Vbxhv+Noqwm3RtBc5rQp3MqdsHdCqqktyI5M/7nFbI8idrrZGXGB48ze
	llxQZ2SKGAfVA31zuO4mhhZRyFogDu8RpV7ygLZg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644973284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8IECwCCb+qopn45MC9fmeUuD0a4u+FGeQjxbr9PxGt8=;
	b=Cy2pNIYW6FfZkoLtykYJouRcgvldhHXLeA64Xk1+ulia+QSk9Ih9Wp/lOnAa30gL
	HPVOiUCToutqHSS2wWj2Q7NUusADy6+30rqd8EhqhvmPB7b5IRkHfT+5Y2+TwTVyiTx
	0ijEx7+M30y3RkhYzYOhCbjlaenYHDell6E2TenU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f000c5d96-0ee74b62-8c64-45fa-9ff6-99721b99a0fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f66d59d7e48576905550438bec1622002a191f5b5b03c8e29851a19f23a38a2b
Date: Wed, 16 Feb 2022 01:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644973284
