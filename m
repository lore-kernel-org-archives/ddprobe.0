Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA1B15AC
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 02:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657678012;
	h=To:Subject:From:Message-Id:Date;
	bh=QZmpwsbf07Nj9R5y88aeX0k6X1ZAYDNUZsSmJWY1zKc=;
	b=Jr/aFmYV3wl8f8FjeZMz37Ph/uwkyFVNtKhQDc2tqCCwgwtNKsuRUdFOY8q1vmqS
	Ax798Iq4hNl/TzO78P5kgWqIWbAYopKrH6ArD0PgnI6BcvYyA/QVH+HHbDHNJ4MqGXP
	dmuk1XDA1PnZh35EVh+BP5OqSWJl72s5/7/Dhb8Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657678012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QZmpwsbf07Nj9R5y88aeX0k6X1ZAYDNUZsSmJWY1zKc=;
	b=H+kjdEdKfQmXRwJl1B95Cfy1jpKmV/gpb8IDqjbXTL8bgLdu6wTWRjXymfXHDpAt
	+VaVg9073koutUhctNGuiOwhXikwQD+N/SlkGqjx+TFdea1s5oozbLcmwBIQUUWcoVJ
	upLIRPM2PDnc6UUzr21pTPqa1FazetZcZK4w8R4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f54f1f7d-f0d7ef88-5585-42f8-aaf1-ae86a974c525-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f5edc9f7f5cc4c46869257686b68ce8f54e32721920395061c256111ebb68fd
Date: Wed, 13 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657678012
