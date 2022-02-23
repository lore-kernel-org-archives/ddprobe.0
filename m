Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3966AD8
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645655184;
	h=To:Subject:From:Message-Id:Date;
	bh=T+C/vdHDdIVM9m42/nDysaltsjkuI5DR4/yyyEgDGmw=;
	b=MdBMnwLmwIMYrJ3fq9vGOse8SLG6glfFlnbPm1uk5V2KTJId/AVlAqpFHoHXMsfM
	rUL8GadDJ2DocCRnSQ3SkEAlys/5+pamaV4jrGbnkdBMBne3ZiuGJtWKToIFpCHsTaX
	RzAR1rjoU9ODJIx9Szv/XyzEZDFGHG/CWAg1pkF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645655184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T+C/vdHDdIVM9m42/nDysaltsjkuI5DR4/yyyEgDGmw=;
	b=OjAv+KW84lDh1uKS1a7lCS2bncGP39/WqAw8erliaEHspnjwQNj2LIZCvUgcBU6R
	H3gEojhYldhDN5CHKdbA7d4fp0RI3XkrJOBRm2Ncr3vjlIuIq8BhK30RpV9+9SLo3Zn
	JrDalLEkkP2oC43BXxJ7rlLGvtiG+pcd/E7JCrUo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28b1559f-f80553ca-8291-4117-b90a-203cda8629fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75e81e4ba627471fad236932dc39a8efaaf94827feb4894477965a67b0da1a8d
Date: Wed, 23 Feb 2022 22:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645655184
