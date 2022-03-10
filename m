Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E4AE7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 13:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646919084;
	h=To:Subject:From:Message-Id:Date;
	bh=6mgimhNO1FQYUPuGyLD1RunoPW7DOKW6JUJvkBgPLHg=;
	b=g8WlmdIkx3cKj2ZLBm9kBVZkqgpem3EpJh+P5gn9UKbQPlYqte2dQM+PIokz9lc7
	ShxQWXecMVunVnGM9XsQMEFQimvvJ/TLJrSxOFYW9GNnDMpRsw+oBwM7+ltR9fqMfhj
	pkbLWpJp9+gFNx9onLthjwcnKuN5uWfT7YlZQLxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646919084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6mgimhNO1FQYUPuGyLD1RunoPW7DOKW6JUJvkBgPLHg=;
	b=jXjVT8okPlX9FaatlvCyDQWCbzLROMSnDSyqw3lHe/lp42Bg5KnVoEESKuMr+czH
	d5lIIbySpvVSbtQ5Hb1ILhz7LlOP9CxqtH9x72hHyy24eo2ClO+PLM7m4lyYLiKyvwI
	ZeDAkIHgs21T6VGp7DRGrsx/LCNvEM3SXG6MBleY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7406eb19-441668b5-e55c-4cf8-9ad4-2b99a45ceba9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d47f7535554eb0f6f72777e4d438416601632c0513ede1ab85fb6f22b412ea06
Date: Thu, 10 Mar 2022 13:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646919084
