Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDE010EF
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 00:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645749384;
	h=To:Subject:From:Message-Id:Date;
	bh=v2YygEJCFj8Lyp5cRxfrTPgn5m3V8yiJQsQE7pCVUJM=;
	b=V+IYwVy6y7mWh+48OsMhSVDOwSkOkqIdCHGKNfP8UzflxUV4AwgMscnizwjJnVwg
	ODXwRX2/c8voAie58lfyAeMAyTCvl6VzwDSMrYVOYVBaGyKWSCdwxeUSzjNFhWgGq0V
	u5fDODHXGDH80Bf1vy74Ez+movTtmApX4OzG8Bu8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645749384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v2YygEJCFj8Lyp5cRxfrTPgn5m3V8yiJQsQE7pCVUJM=;
	b=e/Ohnax/hNjwVnVdtkDIHB3j9MWqCYW5BHc1XP/yJFD1bFa0/TkEVnWwwRvQW4xq
	h0Xn+FOUUfFimHfQ69YNgwzmDALXOBb0Ox8j5FYjwX4qr+joqllB6n3uyn59IwPhAah
	32R817i6U/pY3zMhOGIFNwThfXTSXMd0Kfe/YGsE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2e4eb634-5adb255f-435d-448c-a77b-a9ed0d8d7d90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cd5e1aa53f56d53b6e3f93edd09d4f61b674afb15618bead0ab32e409077394
Date: Fri, 25 Feb 2022 00:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645749384
