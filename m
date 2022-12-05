Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0EF6125
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BEEEC433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670261454;
	bh=Pq78JkvvhAOFFSyJF7o/bNC1Bgv11GfDyZVvzT0wIy4=;
	h=To:Subject:From:Date:From;
	b=CmZA233kdlGEl4pA4FRupUiM2M6z5m/DYWlY0Opc0DyFOFDEaUXSC1bSaUv2gIQI+
	 s114imQaNqugMNM9b4b7WDgOJtUXzSKnl79K3PkSyhnwVmKhK1qyQ5FFMTaHRNkM8k
	 F+2oaUIbE9IsgFGktjikDZC96wTjvcd5xASctYqUA0uJ/e3Ph13F5p45aLCVwK4Dwz
	 mcvfv3aBWu9Z0e3Je36MejDjGG2owXaNLfh0ShUKjdZVlqVfpVSgZtV9Zn1Htw6eBa
	 wGtY8y1gx0iKToiwzY14QGWlvsSknsKnhKRueWV+3i/NoGBjx1cVeDgbVlPRSBoQhR
	 qzDdbDMo2gJcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5340DC4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167026145433.19957.2056493815259534085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51cb73f7c51f55569ac70dab13422f2367ae63603ddc2cfed4e2fbcc35cdf159
Date: Mon, 05 Dec 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670261454
