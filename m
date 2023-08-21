Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6820D4C9F
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 11:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1456C433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 11:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692616448;
	bh=dIiQ+jAuzAZIHO3xEI5vHn2CFIm8fnM3fLQIRmeeAPI=;
	h=To:Subject:From:Date:From;
	b=P2T0sbF+cqHHYQ9uVl+Wpz12n/viiFHC3/H+rC2i3eUyjT5sO8Wt41WPBceZxpUsI
	 BoZNLqgM8tbnifjPtx9Nu4qLxIvNLKc4FOUkPuknduP27OEVHrBQbLp4ZLJpDWHlrH
	 UAZJDspHn3rDVgUX6wlk1hTvB7vnNYVId0A8L6JQ0S2yoCaAANAZGFKK1uBQGr2T6D
	 VMr3RZLLfH4GWT+z12E7glbbloZox7TFmRSgm3uO5v5PusCv6pD4DuyUU0KiflFVw7
	 38JGK6eA40SqIMRc6+wC0LZBVB/zXQyDhSbNCTG0Gy3bFCLvoBjOVJeLp/jbhd55x2
	 rxTD/P10CMUmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA9FEE49A6
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 11:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169261644869.31256.15225990949442797166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3412422038015d04ceb0e767f7845f9b8227ef01099a42f3b6145c4b7da9f9af
Date: Mon, 21 Aug 2023 11:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692616448
