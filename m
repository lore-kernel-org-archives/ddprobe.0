Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE78D1FB1
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83745C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671685887;
	bh=BLNRqZZTwAaN8MqYwTXBP5hSRlz1a3eVVLnao+ShJ0U=;
	h=To:Subject:From:Date:From;
	b=i8O0OcyiiSTZPGD0nCCxSfGP8bNVCDEBim+f2WmGtPqi/fahezsKTkL2cyenCNF+J
	 Qy5sG0l4n6BllzM9hAR4QM1YTbFwdJG9zV0p6b6GGsOxRLhozzAzhIgPaDjpbCGawz
	 SOXx0c1ddEQypgw3osHw8/7+EQQ9s6ZBEiBRQBmYDPXBw7nYPeN2cg/uL+dl71HVMc
	 RA5diNsPc6ooW4kUXrPYnaB8AFuRkLR4PvAueU1boML914N56Z4WRSMkHxFWpg5WOr
	 y0vFxwmfeTNaOQjcI1IVGnmooQiQHwUkgQ+CPOGwcmFHO7v5mU+tiu/RbEQSA+4TUN
	 keDbUQjLwOkdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 678B4C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167168588741.17283.2843033670481197509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4530c2b41b19887a7e207ba174c044b2c7aba3ecd114e2c1522b67abd83032a
Date: Thu, 22 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671685887
