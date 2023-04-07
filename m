Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0381FD7
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 09:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE83C433EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 09:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680859685;
	bh=Tlsa+K4/mOmK5qIHIOqxhAr1cWKwcOSeOaRdxqZ/lXY=;
	h=To:Subject:From:Date:From;
	b=J1Wt5J7Q6cpibgZsNNYid2MBtw9g0LwYMzO97vx5IbEpl6wQNwLWBZePPieaShcvQ
	 6nWaEcixelOopTDMAw7UwrwmVts18QFus4m90XjcFJmK9OiMCBgBtMbJCO+ozV5HoA
	 hii95hFK3Fc+GiCpE+yrZ4pp5IU64JqeCOBSRQDm6XCiz+7nGWhzkNqoG/leo/xY5G
	 Ikao73m/UTEJu+qVImud/GSINzN7VeW8Vv6nJlAvv5ta4njmkjxYPnuNXasT7EbS21
	 hqXZh/x0OV2mF6lHxqHKY2UwiWzRofDtDCK05Oakbg6DiGmmyy6/z9QSugI6PtldTQ
	 JQ0hCvxW/ORbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB86C6FD1D
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 09:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168085968577.21245.8297915356680123287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d157f6eb0e1b2c7428eb887e4878b279d83231037b6b182555fb57dbd00764b5
Date: Fri, 07 Apr 2023 09:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680859685
