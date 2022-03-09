Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A539B17C0
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646820984;
	h=To:Subject:From:Message-Id:Date;
	bh=Yqraqw+/zGmULZZvlxJTQMd6+KnYS4cxGv5yoZj0w8E=;
	b=WS/7/nfBG1s/cGiPH8cMYop4Bd/McrwvGE5rgdpagnngyZZPbcwmIM0fATA/8+u7
	aoOoijeDx9Kb8WBhhrgG75oosYXTWxB8/Ja8Uax6q0UWwlYXf0VMIuqrfVFl62D4qd2
	M6zOPoS3UPp2u39pxO0yEylQppyAjb2vOJ2et6GA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646820984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yqraqw+/zGmULZZvlxJTQMd6+KnYS4cxGv5yoZj0w8E=;
	b=BV4B3xaOoBUmUAYaKpWtp+aNiVx4f93O815XCWfIIQ5AoGLe0uOQbglEZb/0apkF
	HUu9OFU6BROA/FNbi8BgAsPFwYOJ3gczVUvnS6QFCzoD3sgoItnsuB7iUEoW3vVkpHU
	eSNFFHUzfQzAHbqN0Hm2+MhZRfIH/XWiNVBWlHOU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6e2e0817-58638ac2-54cf-4a4a-8e5c-8e119bebac44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5833c31d368d34c9af620a340868f3f13cbbc362ba2ebe9ab848ec80302cfa9b
Date: Wed, 9 Mar 2022 10:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646820984
