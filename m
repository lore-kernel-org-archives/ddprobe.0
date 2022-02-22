Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83CF129A4
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645534584;
	h=To:Subject:From:Message-Id:Date;
	bh=yzDC7HPanPLZ33wV0m+BkIJbUfPLAIEag/i1GfOob4k=;
	b=cHXn2UaH1RoxbqrWbgt8/cLle04neBMwsWVoDKMWfAjj1RIoZXeKjLjOVv3vaYAh
	5le0I7oSDzHkVT6aH7qLdDJSHupAiwJz0b+18MqZVmqmv7zXqLqZk2aQShTDcjQcrH6
	6wRHd6n49iYATMDBmug4T+fy+ubzL4pV0K3WogcI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645534584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yzDC7HPanPLZ33wV0m+BkIJbUfPLAIEag/i1GfOob4k=;
	b=KWABdg3XDKs+ue9C8cLnFbkAa6AQqL3gToU+klZ+Zd8O25QYSMObkSC7EwPpcI8E
	RMF77yFvhisewv5K0fwk004gANIAU7j+GL+oyesD56KSZZK6UUDUyoD2MwQS+i7FZxg
	JAf6mIU/GxvPlpD5QD1GNLZCHAGWHMIJWAYgTQ/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f21811fc3-6b0d1b76-b9ef-46e9-8988-44bc83fa3a9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c51dfcc1d3842931a2e3e8b0eb3ff0297fba88fb034233e652daa532a8bb894
Date: Tue, 22 Feb 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645534584
