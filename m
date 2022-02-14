Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B5DC8A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644876985;
	h=To:Subject:From:Message-Id:Date;
	bh=F5vC4L84t3Gj8USKVwQrkLLYslPZIixTDP92LGWTf/g=;
	b=JWiVxqRkGqwgkA9cjRglIs8a4jTCgninuVRRBcmkNaw3On87jnXU9lw3WVU75pOD
	0qX8QJK3Iw0LlaQ6TMWYClE7ACGmrCAmW9fs2f10FbChlWilCxSOytPnnzsD2343tIN
	e7jT9RvkVquhYNt+8vvDWMBOAAcz4gkkcJ7nNAbI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644876985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F5vC4L84t3Gj8USKVwQrkLLYslPZIixTDP92LGWTf/g=;
	b=RaREcU/yl2PwPgUVoENBTeHVoPUhq0xPv4ZyZIAemmO+/AxiYraGDJhGFUI3Mj0M
	cPCoQAYnu5ihi3dUfcP93IjfDbTIKh50bSOW7TrS7BxOPgLh6KWYhp/NEtg5MS4IvO+
	j6uhn8AQIjfo7mriXHqkTV9iopRpJaaDHM6S0Yrc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efa4ef21f-a4537c23-bb53-4abe-9a79-8ca08f5b4f29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5136fd670b9ee2fa6246cbee82f4a244ed982763beaad8391a93039fb31245bf
Date: Mon, 14 Feb 2022 22:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644876984
