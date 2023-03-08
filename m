Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CB2373
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 02:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC47C433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 02:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678242665;
	bh=cEDupfEnu0yuKG5ivtVYVSzFmf4A/MaeqswBequxFLc=;
	h=To:Subject:From:Date:From;
	b=ALntVXD0SLOKOg3bZSkSQ0OeQAtJ0nhPz+DjO0HxydjBpKvzMsIW4NjzRrCydd5J4
	 mC+GQ1r+6ZxGIj8jfKF/y9sNqFVgLTpmvUhSP9he5Rpx66/ewThL5TvdExZY5J/aQp
	 7843Acb+egtC4I8TQGpbAZxFOzMqCgQFDzhQ5/YI7lU8ahRd/whVorw0v8/8ymIndI
	 1Vpn77XOINAT+YxLoWDF3g6dmIDTEcYJerCQZbRJBWMK4hNcYD0lo1dbaObmo6AwVJ
	 7UbBsd5btufzkHniSCqR+c8NFEAKgVRsPY8WlLO8tYPNOB8317vcFK5FDwg+QNuB4G
	 YMDAo5RI852DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77F3C6FA99
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 02:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167824266574.15394.15266462967928742566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b70339cac58d8548cc1afa8e12146917c15f5e62a32aa7213bc9b6242eb66e7
Date: Wed, 08 Mar 2023 02:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678242665
