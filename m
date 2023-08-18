Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDA5469F
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 17:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAAEC433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 17:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692380648;
	bh=/jK6Ax2QUhSInjGKJFMObPt/wHOkCWHELLPyEa+mTtk=;
	h=To:Subject:From:Date:From;
	b=N4cRKudTyywFCIXKOTGJHGj/YG1leZOUMI/lh8IUiorDqxX7ugRYPABcr/mMBamEX
	 cvmDg/f7cNW//W9xaFff2P2y6LT0zPj7NGVn4ZgoiquLcpBumwE8012IAl9qt2rZkO
	 HYObwXGBSqLFS1nwPin/mSIje8gvUsyZ0MaP8zvJt0QzXSW/mTAd1nX/XGsHJrel0v
	 pMTtagiuHF8eoinRbpMOibPVEj3YOijNnfy9WWm7TL4/2NcGdKFKfOmzRsvj7flRJb
	 hSAygGhEClWkGRFzEblpvEsMKPDQQ1eRjpDCTsvhj1hz1qYzeHCKmZG1GUJTySpgqj
	 Cbl1IgeYr2Fnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E15EE4980
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 17:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169238064871.24819.6380858433789923343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d547418d32079131591f3b2e90a01caca4ce086cfdc83ba1826e5c6aa3143e
Date: Fri, 18 Aug 2023 17:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692380648
