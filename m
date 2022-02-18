Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 993D728E2
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645201585;
	h=To:Subject:From:Message-Id:Date;
	bh=7Gjl8vCh3RPSVGfk8WAwBAnQjNfUJWKicHLtuDYOb2w=;
	b=I3DVZQUEnwPfxbSCPyl3dsAKwoemEZKdVdmMoa9U7bz0znoPyKmGKJYFYkkFE13K
	LNpEnJJmAduJO+Vo/3NYoeVPspKYL9+euepnzmIe+o40xs/bZpFzrZhAsPkWW0/HHxi
	U9iHgke8M1UG9D5+AMRwp6Mt9CNeiBgr9gv5bnKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645201585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Gjl8vCh3RPSVGfk8WAwBAnQjNfUJWKicHLtuDYOb2w=;
	b=drDevKWluat1xLOw8RtNCOGz2h8lgu9GPGPL2KZvr14TwaPEIOxkvj2H4C+sMtlA
	/0oPEWYofxd76dLg+Utwrca8APynN7Z0UcrE0fVW6V/SBshNHKIuQ7rl5L8e4B33n8e
	Wv45IwL7xA6sZFb9tBePJ3lVYz+Cu88fK+I8g8lE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0da7f33c-c7469ed0-9f0d-444c-94d3-f145bf6f2c96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27cf379e16779d80d12672301ecd01f8eed9395769d3d6bae41f1dd65f197167
Date: Fri, 18 Feb 2022 16:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645201584
