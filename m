Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 918A523A3
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 07:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644996384;
	h=To:Subject:From:Message-Id:Date;
	bh=28EDHOqVs4tudXezRp4MSaXTktwqJouk6N2GzL5WPe8=;
	b=fV9sgjAYnRloQXXxG1rMkzKPGrPaAMcITNts7k+jlmvaHHop7yqahBXYo+3xSurC
	Twy9Hxd4psGQ3sTfzje8aItQuIXQEOYzDhG25lqzxqCS2iJuhMK+96UCNvl6GGC+tuu
	MSEIxIAp2Hdf5zK02A0Xrclta2FABGVGljhfIEcs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644996384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=28EDHOqVs4tudXezRp4MSaXTktwqJouk6N2GzL5WPe8=;
	b=W9TXK/09EU9aHDTHFwmtY+0ufYK8YRICLLPKMtgxJLVwH+GiXruHRMym4QoMXO3q
	zmTfq+Mz2sMBm8d0Hst7hp5CoZ5hwvG+nnFg7nZVX591wFZM8gcDBJLvoYF+xen4tos
	YLw+xzNlFM5bKQ+5/oBd46Aba4aqhdMLdupnQbws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f016cd7f6-756449b0-e863-473f-b142-5a5c48c51985-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93b2b737ba7cab38748f10984b4161632b84daca2b822635f42c1be7220cbb45
Date: Wed, 16 Feb 2022 07:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644996384
