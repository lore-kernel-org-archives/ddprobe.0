Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB33A6AA9
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7040FC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662046853;
	bh=5JskdQS+Yq5I31sIO8pCFnHuu3b05VylRgJdEOjeA8g=;
	h=To:Subject:From:Date:From;
	b=Mhp/KSrCQ9ElnppajEWC7Pb/Kj84ASUWfy4bjEs0/4DJGHrLjgzts9f98xX4J8Lax
	 zhjytOsE/J2UHYwl7N9P0uLri7Djy0OLs021lH8/3Vpd6jvsJvid/zWkqjMJWBOv4G
	 ci05282iy9Xbkd8UISjxF0NOJX758C3FPnsEyXCoQsWmHwN4vx3Yfmrq4/wvQM68Le
	 PkRew59qmexq1HYjvzg76yCOolU90tLdijMe6vwzwUKwweVcIVtq0ZVlkZmfEWY2B1
	 +4DYWo3j7jYKRgv5e4xWsw2VC1U3Sqor+5rqWohbSGc7Ys1uOSsUQLFAJ4uXtwogfv
	 /DDDBEw5LTzvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B78ECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166204685332.1641.12712478216974608018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d5e691c49760bf81becb46a22fac427aaebb59e7a59ed0753fd4979cc12a6e8
Date: Thu, 01 Sep 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662046853
