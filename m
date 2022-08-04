Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708E37F6
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659599452;
	h=To:Subject:From:Message-Id:Date;
	bh=6AOJF9kaKpSWda9hFi/QqjBmkgLvpr/u1Enzz+t4hR8=;
	b=VKjt2IQIh3udk9Y2Q1o1IjaMuevWkFSbvujUZz/BRtIbsgUWAkI9ngCgZwhZAZr0
	f87tlTra0bMfYbwIWqEYW2a2XS3bHutWVdoTA9/IPWj2g9MyhKTDCPmeZpIyU3qiUvQ
	+nuQ9rc4vZnyFxUtfMdlgvND7GjFYZ6AhzNWoeHk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659599452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6AOJF9kaKpSWda9hFi/QqjBmkgLvpr/u1Enzz+t4hR8=;
	b=gBjN94+XMi7MwQBtYQGRpG00qh7qovMe0Z8RIMrpgTieXY1QsVXZriB/FoPGWzuY
	kEMOGN1ynYzVJzJQNuRSN8rZzk4FX+LAwDKCjNe9jMQzcrJKaL4Nz/rOdbS1yN2q3uz
	eDUUfMeWHiTfSHfLF13Xv24VmUnIY4Net8/+nsTU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018267d5f99a-5449b8cb-5ce6-4c35-a4dc-df35aca79a4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dea031d2fcd6b3afb8d76b41ec4f60ecd112c3ccfaefc388d4d5b1d27bb2823
Date: Thu, 4 Aug 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659599452
