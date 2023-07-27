Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93EEF7C
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 01:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB273C433C9
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 01:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690422128;
	bh=6Ll3zPCSsDVIezR5xiE8dZlHwjhAfkOsHJV5I3qsn1g=;
	h=To:Subject:From:Date:From;
	b=Dg2UeqHUS++XsWF6/Ke/o1f+BPO7bnizxIBWAUQZigRYZEg5J4vrJwsrSYdNgP55p
	 ZqCEUijL49vvxVdqddJ9Y+Pu2wdtSBxwN21aYw2u995aHUtHvevt4h2BhY5WBgmiis
	 PS8s7RWQRwcQGhMLX2WUQlEuex7jrl0lW5CoBwBG6ZzfSpwrCw8Z3wzkrLJid7HCSA
	 lZQydDTXvy7zq5UFjp3Ow91wI/kh6uhS8auaa8+8NYAclOUPh90Mq5RKXwB4sxM3S7
	 NrBydfkPbotcufgCgANPOj4c/kfJ4ixJvsejS+CfWKcm4ysidk7bLDy0K+b8qB7+zO
	 hUOyV6XVxFd0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81D7C001DE
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 01:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169042212872.15812.15357465540744366883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2b36d0a726e1432e4db61311424eb4a1a48e90795714742da7b75d0cb11f81
Date: Thu, 27 Jul 2023 01:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690422128
