Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9B32F57
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 13:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6640EC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 13:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661433652;
	bh=3chalwuBgNV5ckLB71HpWQikFsO2efEuEZpLVKFoWu4=;
	h=To:Subject:From:Date:From;
	b=QjdYvxnC6S4cOiBi9z4MZTdvqRTRZSvNIZ2Bq/aFtAAubJx4gz8SjTOnORrGQD3lM
	 yMMtIQvsvlNSWqCvRSmj4YqHIXNyuAFymC3mxcyXLDx7MRaNI16z/MBDnP3f4L3vqw
	 s7vBqsOL7OUYY3WvqHBP4ikycybg6UIxp4/35f0HO82gg58lt5VaBPRXhJ+uiCV82e
	 T775dx96OrzhyYokALWoUKKGaXL6xqhHORScW8YtSyme2glOLeDj6sIRecNcWPG2Ja
	 adlHh7I3g145M6Uf3UrWa+hikqnKqa6tvXqTwQhWgDBYD/VaNYCcaMQyzOJvO/3zlQ
	 BgxdL6H2VEIhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50958C28D13
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 13:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166143365232.5964.15615924568089512253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971802e0e0365d369e389c275c3e877adad47b7f4200386fd881ddf013e1cbd5
Date: Thu, 25 Aug 2022 13:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661433652
