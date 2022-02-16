Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5905323B9
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 08:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645000284;
	h=To:Subject:From:Message-Id:Date;
	bh=inRQ0U7xnT7MjhItGdVSzPN46o7t3bfa5iYvHs5CfDE=;
	b=WVLu7OkXHOpfTJe6gu1JLblr8xYIJb5aRYFmdbKiBGC67un73tqXEWlteRLNIub5
	4vZi3GKZ15zUVQ1DfJWXBI3s/hDUplV4rDxQAb9v4frP65Wu70DXlI+COjHpXHl+4pw
	IJh249QJP06MXWBZ+Wiv5C1aEzZt76BLowtOAdrg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645000284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=inRQ0U7xnT7MjhItGdVSzPN46o7t3bfa5iYvHs5CfDE=;
	b=FYKPOw5gslID6CLtdfKMXDjNUtNJdvUhoDtw+Kut9Ztvzz3ABJZFaJmI+gOnS5aE
	hOXhCc3G1S3qJ/Rdmiqk9D1c7vPohhYKF9meMWQE2tV/QVEHtme23PnkdzyW0E0zlyS
	AO7sehTj9nujk14kl9v09zN5GfTersSp5QieMYG0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f01a85a4c-0b8c0b37-68f4-4309-93f4-3ab973667661-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9512dc682492953fd57a816ee6c2f178991929e281da0fd05dbae30d4ccb3a2e
Date: Wed, 16 Feb 2022 08:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645000284
