Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5FA7B
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EDD7C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662187853;
	bh=AMCCS0UmFwNQsvEyyan0EEcfogWgt8kHe4uhHqr/Avc=;
	h=To:Subject:From:Date:From;
	b=Ej9HmmaYfE5/ZpPBcE3Yp0FHi+GQuQoMA58C27pndVcjfK0vzcpXT3rqteo1UbCKF
	 Xrsk+ptGc82q2hjnVKyQnfvif6h/GaYkeg07ah+XCJOlGYUSeRBw8tZGiA/zMI2MRN
	 Ez5PaBOlNlR7juQxjNHOlc8TtPgUj4i6EqGI2bLKOU2Hy7GSYfCDKUTsGeY/KoYwx0
	 nZ1aI7QL1dc28B4OqgxoapcrrQI3Sihxw2xtcl2V7Rl9lhFISp0M3sLYjpgHmSCqHQ
	 xpPPvIW0HRnlhBWTNeK7SvMZJaEcXdoK9ZYfH+Tqizdh+eoGT3mh7K2wCj5AdL2Ng8
	 O3JXlqtp07OeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 543FEC6FA82
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166218785333.5479.14047473757670759686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d6fcecd0823a54d43ecaa4ddc2088a0e9b63e5a427f6bf98ec5248d6f5183e
Date: Sat, 03 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662187853
