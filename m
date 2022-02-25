Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6237B10EE
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645759284;
	h=To:Subject:From:Message-Id:Date;
	bh=enztKFVVfyaHYWAWJfPp3F3AH1eYhwjsJFPJhD1+NTw=;
	b=gA8bdbgD+LRuAfoXE77DkJfEni7trBTifnbYDFnL0tKm2ygxoVSZV2ihrOITAoYw
	8p/mJZdtBqw4KLhjJzI7m7Mmi8/vUxKC7Sbyv0iwYZTI1l2WUv+D2B4+97cK8i7nIEI
	L5mOGAiBQbx34/Wmssza+cQJUWArPwpq/VnZ/2z0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645759284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=enztKFVVfyaHYWAWJfPp3F3AH1eYhwjsJFPJhD1+NTw=;
	b=M+VZybbopRQTi7+G3hqmgFyvUJtrgNw9o7hs6UWnNZb26WzEbBNbNPpX85xJV1T1
	gYUqwRzwSvTFNWHEJP62qg4KzEbry2kbAaNyeDm+gClr70r9t03YR9ZEPCyPCuSMV8O
	h9dl33v3XoQQnM5U47jcBOy9p5oaTRxPHJ5Yoczk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2ee5c60e-994ced16-721b-40a2-bc6a-1a1e3ecf9f48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bd192b2ea7779076a5126ed32f01d73f61c72dac2383ddbe9cf0add3f34b8df
Date: Fri, 25 Feb 2022 03:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645759284
