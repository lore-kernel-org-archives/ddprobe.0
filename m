Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F04185F
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 07:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04BC9C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 07:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678605366;
	bh=durFojd/zHurlD0oD895WxXpGurHiw8czTIb1ParJsA=;
	h=To:Subject:From:Date:From;
	b=K5WigrdqRoWepFmwmiSaUYqEy/u4A8vQ7A3bAy9skDpnWrE+hOv1NG/rsFwDFRIWL
	 gpN3UupPbouvX8xikOI4cltbapSbTS7u8kZHHncHzfGwyWayry7LZsPrHSs4yibR+5
	 jJn39twt8pv4uEEep9pl05jzYkR9i+jtSSt4UCjBnRx1zspNmPJW7ehzK+w/Ze1RMr
	 lILGAertdalx8gNE5HtKL8TbOmepj4rDa4R/WRQaQbnyXcbzJedLiOkZtfCqfw8jTo
	 ufVICvBikn4EuB2WLjQt1PKXJ69KOEwnVUfdYB/CiLMXEG4YE93v8W/Hk2EIm4TPaF
	 xf0hQTCUveBYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D54B8C6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 07:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167860536584.28655.87058462265711967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b9d837969a447e6f785fc5ef36c7378d44957177c08fe273797c20f84e750c
Date: Sun, 12 Mar 2023 07:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678605365
