Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7604CEB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644883584;
	h=To:Subject:From:Message-Id:Date;
	bh=IFX6yhU+q3z9WnRTdwK/xJunhlLeAEObmPekV+gpdHY=;
	b=aiQomG4x6zj5pWnRDACsXOgI23vp7tzLLDVkuCE4SBnroedniDGVs6z3w+rwnKSK
	c4xlgBZLqrVf3vEQjcPWgE1WzpwfamDRJHG8SwAxZfvomHBx0gFS4F64MO3yveJg9kv
	0y1145qWHtqyYuDhw0SlWSXarUZPd44ssKSuj480=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644883584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IFX6yhU+q3z9WnRTdwK/xJunhlLeAEObmPekV+gpdHY=;
	b=U4YblX8wTZJh5dEskzqul4b4qFb65i3rNVUbazLCIrCSDn4sE9ON9+HJTN2lE9iF
	+geE0dz9G2XxTc/XMtrT0pqY9VSgBdGqMhLQ333Cm4TJl6YfmxrLfypNnhpvo6hsvHI
	a8ltbT4DeHldb8tGelfKUbv5zBNRKszIhdKuqvcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efab3a6fe-0fc32b57-12ee-4575-98ae-b6aa92db8d37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c3013050dcc0743615e8ff06c9b6c36a55d17e964a7bce1c48138e577d9f271
Date: Tue, 15 Feb 2022 00:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644883584
