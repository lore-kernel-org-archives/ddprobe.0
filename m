Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF5815C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 19:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646076385;
	h=To:Subject:From:Message-Id:Date;
	bh=2PuPh9zAV++1t2cedYX28er5ufxOyOGGXz8qQ5m7GdQ=;
	b=k3A3YCoJQmJiQux/gdkzGeP0Vh/CfIBFQ8p4Kmi+8q8ZqosX3TjTC5rFGPXqJkq4
	rXnSYCnTXlMU/KZLCvaHW0MtvqL0r8btaldigsctZnz8QmV8ngi3iWVWyyBOFc/XZxA
	IITB7vBXVSIIlQxKoLNFSCa+N80pqHvTeJwP/WMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646076385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2PuPh9zAV++1t2cedYX28er5ufxOyOGGXz8qQ5m7GdQ=;
	b=SmnDywjGMyMkic4dgoV9jUX1URDicLBRa66CglLtFDKOmA/Z3mFHuQay/pyK/tF+
	y4GLHls2FS/WIDiiPHZhQLaZANXoErul3fiuL8a0KzXmRW635IVlQuhDFzM7TimHV1o
	x1ROKT7ZbqKPjTVwS72qvOBDBxspulvr7o+DLQ44=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f41cc560b-f9e5140c-5d36-4aa6-9fee-043a438c9e32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 698ba457d250dcbf22d6a560ae16c5c5ee0e5645d4ec29f350a41feab2bc4f37
Date: Mon, 28 Feb 2022 19:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646076384
