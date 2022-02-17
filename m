Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A3F3B2B
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 08:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645087585;
	h=To:Subject:From:Message-Id:Date;
	bh=d+glbtdc/OnJU0LN7RbtwJBSSeo++AHEEyy78qagQXI=;
	b=OovdONqrMGnsL5shO+fkYEs6F9j0eOgNVOdSfGI7W1ljE7O5c9jO+lPBtLedKH66
	+lJOlU/tcpmen6d2UCEL7EK55IHvtW4x3FEzSHgKo/i/ASs+aYVJxJo5wk4+Px5V3ii
	oMl+dpZSrd3MWlnFy9GSqmWBE98ifQ0hfruGVx3U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645087585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d+glbtdc/OnJU0LN7RbtwJBSSeo++AHEEyy78qagQXI=;
	b=InYG39v8NbRMyu+K8+MKTisIOjw3mvlN3NJPPfHgHvAYmZdrkDLEmgwQM8f22wsb
	WlSGOWhDYGRcDcJsK07s0EU/OrBH5FR9TAbcYsbvYOsACUcotmgJzx6zlUHiLnk6UhN
	G1AXx0Bw7+SeC55c0gIlANyWa4uv4JvWRyfHCJK4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f06dc7206-5997b6b3-1bae-4c5e-9309-d103bd22bf72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c23540f2eff63c19de782cb5e5816f1669f0d9255e2c5406273efb0b4f3b9879
Date: Thu, 17 Feb 2022 08:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645087584
