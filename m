Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0D21840
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8738AC433F0
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671968487;
	bh=vorBDKrphpWFs+2AHOFMxjek6PZcHen/kl4zRgoM/fg=;
	h=To:Subject:From:Date:From;
	b=TqH9CL0v1skzEi92mb4oOT8uzCVjetWRh8BN8U3Y/LkhMNUqNRHdHwxFL/pnA2tyi
	 tdjhoFWixjYvj2tZH0szU+C/NsV8QBxNlHGV1Qm5+WzPkff5afta7X4jCpNvaO/Ly5
	 mlUoq6F6Woy3ofZbbe8qvsrg6kIQ9j7eBvsmA6kwUQqyVBvUCvuo7Ddx7PmGi+m4VL
	 3SQ0xGzVxhi5UDSmKno3g7XjurHplmWZTkB2NVvsiXCYT2u5vtrUsgWEY1xVx3M6Zm
	 DRb0onj5EV2vCER6Jh6tagfONERkRFvnOHUb+6TRQFTvzfNGe7vlG7qgjONRR59P5L
	 DHzeSbYIuijVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B2F1C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167196848742.30452.13415375423925842470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6e63debd409153b5459a7a14eeeeaa8bfb64b1596efa2ceea3d58ae51a9b50
Date: Sun, 25 Dec 2022 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671968487
