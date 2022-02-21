Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6113C7E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645455984;
	h=To:Subject:From:Message-Id:Date;
	bh=+RfaSKORAzlkZeTEihJDzqRScHo58nl/VjjQXnd2lfI=;
	b=m2Twj4G76HsRApWqGb/7r7SjWjGxIXSYdwhL6sZ6n6t0N4Ojqm2GpRvcuFW5IcQX
	O2CwixsBwCXNEN6grOXFg4LWR5hJqn2N+tgd7j1povVCsFv7D+NTlNjVNod7ltcFDI2
	eeIqXZISqosPVWBQd+o6RNYrR9zlO3nt9+vMuYjw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645455984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+RfaSKORAzlkZeTEihJDzqRScHo58nl/VjjQXnd2lfI=;
	b=MCPeDw/Uv6pBxxDTfq+/64OVhKpyzUHVsjGsZNOKCQd1ZA6P63ujNSeJrQzj7ETo
	wiR79QMm6Ud/wI6VJuEBaWbNi61KyeU8aD+DyOoytXZDujEUJifFyES8XCgPLgls0DD
	ZIQL6JSc0gRNR6Ho7dyXrfKIydOIsETfl/G6j4TQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1cd1c875-a9fedef6-8ad8-4f62-9f9a-708d1797a168-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65577ee48ad665badf7c371e2472b2ad4eee9c2cc430dcafea264069cfaa2694
Date: Mon, 21 Feb 2022 15:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645455984
