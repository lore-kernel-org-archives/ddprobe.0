Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAAEF7E9
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75856C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662834653;
	bh=7L7llZKs4CKJLA8dBxvauFL22BGr6q8jcjx3j9SlBNQ=;
	h=To:Subject:From:Date:From;
	b=apkRVyjLGHOYALkEbQEJcxmPQeXpKtBFTRkHbDUOjQjfOXE1sBcpehTwf01dw15x4
	 Ij4pWuqaojRmgSIvl9QupnGznLdeCm+mdcCd+EGjie7an3b6Gpx9lQVfmJAaKWqdZK
	 TdOV/xE0RGeXIiKbpPgz4wwOF0aDicOojNwpbze+DU07SYWSHx/t0EN0YFKkSfuWr5
	 UQMreiSaTtzIsx8/GPOfLHSdQ6SRcma43auHN9Vyc6ThHFWl4wwxDijjkVoESTEaKs
	 chR9Gk7HZ6/OEnQGrnT10FELU/sfchlu+nLqa5oYhH5mDMz+9psUkV3jS5p5XyxvTy
	 W+LXSjaTtkcCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 586D2ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166283465333.7182.11828413940396472201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb9b276b80ee4e66882d79d9ad4da303296f1740bebf96bb99bfa0aa8509ca3
Date: Sat, 10 Sep 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662834653
