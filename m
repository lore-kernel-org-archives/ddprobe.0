Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC45633CB
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646253385;
	h=To:Subject:From:Message-Id:Date;
	bh=k3XJ7Q39u8YMA7mwP5ocTqGodNPfmL/ORCiQLby9eTk=;
	b=aNgc8OH5whbhxT0apSt02vakGavlOIhX8K7mCTwxpcjTZAy7Q3X5ZNKnrk5OUg2L
	NpXmojBScmlL8sKleSSEgHKR8PTRYrgyQh3muT39sTjWh+zZWRUEA1fb4nw7H2KhcXk
	RkXSJhMBb7OZuUFUUd9nNvjw0d2FwZ9REJzCWq3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646253385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k3XJ7Q39u8YMA7mwP5ocTqGodNPfmL/ORCiQLby9eTk=;
	b=DgboamKE1JmAgWWBqE9NkvL+CA4lRc5hY8gQYvw5OvYxicgOrOIpL1n4tBjZqzaV
	SOPhkDOO3MA1zoBrIjrGcWqYkVnJ7Gx5Csgn1XvuurzOMlk7pm97n7vucxsSergCcrq
	sWOoN0HA7Rx22tQKq7fB/2QIG/WN613U1GH4Z52c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4c5924ae-3a39a32f-95dd-47ae-b282-62f8737365f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ab991ab12acef2d4be4a2c7fd80443880327fd7828536c6a5b90331c3878488
Date: Wed, 2 Mar 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646253384
