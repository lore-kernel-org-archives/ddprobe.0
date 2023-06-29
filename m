Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629C912B60
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 14:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF49C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 14:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688048588;
	bh=JNdoP7FRyFNzcGARFUT377MfxmGWaX9a/vVeSrvId44=;
	h=To:Subject:From:Date:From;
	b=FJBxs3yxfABAK8jIgvvzK6yVsgkw+TK931Lx+/seFHBzLWOrNUA+V9XzA5XF1B/LH
	 mEFZ/2hy4d7fY/ewdJPx9pwGzmPx8qYncFftTgNlzymm8NSTGMRADW0Q6L96D9WG64
	 j4eLbXolbC4UNk0DsXu2F6Wodt2e2cDF4c7PUgELOPdHVF55naIHxboDQwMMOdqXbP
	 D4i2WAuGM9pXfCR24Zlr1Ds9t1Dg0DQK8TpZ1CuH6Y3LSiEJ0rBaPG44SrWrjT6y4B
	 V2cQCVgLCff9UK9k2YdnqINiDp+pIFDF+Z48wzhkCkoXR//BEd0csHMIslPkaqCrA+
	 Je5CAMJnMf2cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A90EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 14:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168804858878.8350.13449252557424544643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 492554cdb7e41ef9ee3329dcec1b3d012a6c740bbd526b9efeab8b58d8011f6c
Date: Thu, 29 Jun 2023 14:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688048588
