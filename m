Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BA81C296
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 14:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3E9C433C9
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 14:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695738308;
	bh=yzWd3lHKflXjscWkFeVoGHT1atZzUZx6TARROVTghyM=;
	h=To:Subject:From:Date:From;
	b=gyV4VELkr9mJq9j7Z65Oyh5bJmrJZLEx0Ef+w1ylINI5XRVfBa5LCfRN4tr3T42pA
	 aibOIldDBR60D9rpxPWcVTMo/nmI92UKj8v5sBH4Qd9NidGJd0/jbEV2MU3TgIoOic
	 3gaBX0qVc1L0yOzcdqVNQQAOVthvkUhB7c0U/09e9XvRJgzpt/u1b3hWgZXc8Z6fFD
	 3A3zy7tiQhZ7arfVgwJYagJXKGgWfOA8eg7cE9NMJxEwbEoNvu87Y6EgWEtC9fLDBp
	 ftCpDZcSP0fIjMp2U4ShfWDPpBVBcSNmvwYv/6df+675zUnXzDP3WCDn8MQ49crwAX
	 8tQQ1H1ypUyiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57EBE7E63C
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 14:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169573830867.22170.14162796653138345734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83b23bd8a0bceb3d9948c81c7b2dc9a251e48b65c72b425128cce9b9c17af872
Date: Tue, 26 Sep 2023 14:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695738308
