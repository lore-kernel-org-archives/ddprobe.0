Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F594C7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F9F3C433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663272053;
	bh=sE5M2ttGRMCVpbKPPufAfotoz4N6UtBMSk+nIjbKoNw=;
	h=To:Subject:From:Date:From;
	b=m0NRxos15ViSuDewg+iY6S8loICBdFpGFQADh0bcqMX+ou3n0MquH4g2fTqepcWcE
	 wd3I14W7Cg77jgojkPmK0mIDQ8dXV1Xtv+tdrswQwAm4VhAC4PalI7z+yQpidSB1PZ
	 TBcM3R0vjvvm8Cc6Ng3nZvd0xathLgNG3BLmqiHrifos1m364Rj+A+UabqKpt2R9ge
	 1wIV1qPvvpLUo+NCN8KcytbgiIsh9+SgciMrgIE41X8yePcE+mn0MX/WnOR9CCApEj
	 7Lnyy0LxzOWE2VD2Kq6q9A2dS+xGSL5wc7sLnu94BRqf1TU9Ljmvzz7bR3LuHmcQ3f
	 bZnE0JMsOzTgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58AFBECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166327205335.21818.15132729503368515203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8fb5e64026bf9ebd8151cd80057aa779cc5ffb85755c775e5bcb725faa05c24
Date: Thu, 15 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663272053
