Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B28D67463
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660772453;
	h=To:Subject:From:Message-Id:Date;
	bh=CpXRFScrdFgmL0Xl7gtSmA1v4QOR8TvvNqk9rICPBF0=;
	b=P7wCXG8QVHGpNLeyniwGCCxFnmw6d3eUBGZwiE6QKRvhoHwCh4jmIaH+uqTagoGR
	CwM5ut3nFo8plBXp95oi1LW9N0GVGk8uKLvPGD6FdhmwmlW2iPfubKEsfd4LFBSw4MK
	C4cNSnCWxI1J8n90gYslqqoHRJ1efrO9OZmOj4qA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660772453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CpXRFScrdFgmL0Xl7gtSmA1v4QOR8TvvNqk9rICPBF0=;
	b=ktEUin1B4obnR1qYuwA4tFGlLOEDjI5bcK+UKEgp49o3dSysN2ZL8iBnBvpru3ps
	58ttozXQhjFsHxYB2+NJJSn79QdrEgV7lTHOw7cF+FFOybkZ1kWRf+BEOO1HHMrrvsS
	zqQ0u1YltXvWNXgyhQ6sPc8r3TifVHHDmocVTL7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182adc08930-6724c156-ded5-407c-be74-b186070e2e79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c8489a283789297197a7f9c5a9e12db4d10836c0744255ea774d2f4e41b2d91
Date: Wed, 17 Aug 2022 21:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660772452
