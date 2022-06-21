Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD681C0C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 22:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655851739;
	h=To:Subject:From:Message-Id:Date;
	bh=3980laGcXFdT3Yr1RBKj8uoMpjRiJzMkZ82JyerpUwk=;
	b=RM7skQQZ/WAGkakbSoXqNnh62uYgP3a2Y9T2SoIepu5NDOcQ6NJAWjgv67t42Lmy
	vtaMttAulhh3Uc/ykYuYzjD0LAYrgsjM/uJyCnSnywDJb2dSBWtFyM3kKyzbiC7+dbM
	WqiIYPfnxIzqNAy7U0HUMUIoxVmv+XjGxHvD5jl8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655851739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3980laGcXFdT3Yr1RBKj8uoMpjRiJzMkZ82JyerpUwk=;
	b=YkFxbkLviHkctNRVKNa9zB5vi8kv8BcPDexjF5ZXRlZoPw0ySe7zYbWOHa6JOCOK
	mxrLGUiZEpAB7s42+TSPRJEbrUnIkv6uK5mVL8oX/arV9cS5utf0WKqRCxZLJkfdsyc
	Ly68Ar2G5UemPkcRxce7Jk4OYFxXOh17KmuPM4gM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181887468d7-03035b48-2853-4d1f-bb10-2824a02085e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e39b13e5324e030eb9c9b615ddae801325a3b0a9c8a9894b371330dbd98c2d83
Date: Tue, 21 Jun 2022 22:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655851739
