Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1E828E8
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C34DC433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667810454;
	bh=NCGNgJR7UhtBBED0i6FAZKZSQghuJb1CD73AmEOv8Bg=;
	h=To:Subject:From:Date:From;
	b=RKoL39cEZs8PtDeENX++QlTwYZHMNwEtyDVIUYYcK6dqxrq8Lo8ab2EeJJ2lSoZiB
	 nS/fRsV5L4sNDcAIfnlQ4JO5RHI1uqHQSkqJ1al3I0RBZOg6ngcl5Bhnk4y0l91XD/
	 w3iPwciQwHSMHFm7VpdwLQPvklolJxoufQjQN0vlovlxAqxjnT9+/+000KTUSBZbG+
	 EZ6oV2VTscwzptES6ugATcCkIcE5snJok8suXr6nLtJ+90dDmeDOdVU4gWaj6tvQJe
	 KxwZmCmgVUixOWiNCqo/wnw4EWQwA4s76YeoHVtEG1wK2sPu1vnWJ46FMhl2bgu0zl
	 nSRnXashMNNsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F10AC4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166781045431.20568.16086793010151994634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6551b1b07b38c5880851995abd872362af30c9d0babda6119d9bc44901009e26
Date: Mon, 07 Nov 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667810454
