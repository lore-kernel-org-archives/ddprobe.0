Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE632F4E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 14:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645538784;
	h=To:Subject:From:Message-Id:Date;
	bh=DVongVDNt13MW22W2u58fSNpn3sLTYh1irxGLOKOiwQ=;
	b=kBlq58DwwhuZPQimw1sYM1NHhRWPLe2tyAXU6oSjCBIYbl1Cn09tto+BWIYLnX2F
	MHGvQ0lExySsGgUB4gsHCrVbhTPkljye3Ga4sQBy45gWmwL8ugCgEl+2AyHIt+v6h6h
	XP1vfYdj2AFpWVEk0Qnp71XJIgAYD+tdQQVIIvAc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645538784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DVongVDNt13MW22W2u58fSNpn3sLTYh1irxGLOKOiwQ=;
	b=DPs88OCRGkQBkj8DPuX4EFYI4PU4o2bpE7yR0+hMfJWstGZrYtPNR9fgxQMDuZJD
	Kmw5qkEq/XOQNdwyfS91VgzSsdQtlPLRd0ZNlLEp9gttXbeG23fZmfZRqlZfyYHTYqv
	FnQzwsC1ehRUYtpnbUsHt7kjNtQk+G04HVmTtrM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f21c135ee-eba4e526-8cfe-4e2d-8065-b4c854069f23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07d8ecd015f02f7fd31694db7c4bba8405d23e3753c73d941e35aec31db3a8f4
Date: Tue, 22 Feb 2022 14:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645538784
