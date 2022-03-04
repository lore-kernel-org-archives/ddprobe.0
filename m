Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9347C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646361384;
	h=To:Subject:From:Message-Id:Date;
	bh=Inep1WI7OnXnTSlPhCGkT5WRQwU4ZDeKsJ8s+JQPNok=;
	b=PUpleQjstgMpEvcBSpY1N/Q2bQr5McE5bTpNJerNUNkSOhodPQCteCN2vrG1JFYV
	A2zD3/8nkPTSKA0xt80U1IEFsGa8yIPK8mosvbmuacnBnxerJvovCQFQNHBFUePvyVk
	kGohoUxht0h/YFPDfMjTXNwQp1ecMSgnQBPTDD/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646361384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Inep1WI7OnXnTSlPhCGkT5WRQwU4ZDeKsJ8s+JQPNok=;
	b=PtgK7tltdv2sUZC8K8D72pqz2tobwuIUdk+5TDO3Tl5Bdv8RS+6jhcB/wngc0P4g
	CteasT5tE8do18aBgOHdkvaebsflfrfWp8Gty0FrAUNppPTx4VbZNFEZEVQwYH48L/q
	GGmJYQI4PpWZItdoWxf9riBp0QQ7Z7jk92N6R6VY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f52c9171d-6902b53f-1f54-400c-ba61-dbc313630e05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c27ad7eab04800cca53feccb656cac39ea2b6baa8efe153851af8b604c1d101b
Date: Fri, 4 Mar 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646361384
