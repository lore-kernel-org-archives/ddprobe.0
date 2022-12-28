Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC35A137E
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80B79C433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672233687;
	bh=SBgCHOWUyKpjnGAd6Ht7KAIIdE3ieL3bx6n21coHY/A=;
	h=To:Subject:From:Date:From;
	b=c0xWnQ6o76PEyVREaEpKjMCjD7FNhJfKw0WoS9YbFE+A2I5phZVMxHgogKMAbPmKI
	 XOWlYf5OznVWfCuJrqOqtKeSdNKtTH+1Zcq8D906jdV0iJq51MXVPd0L2jooaKPnHQ
	 Yph5kMKEalsStrD9bgEEvPRqyrUG0XRh2Y/7ndHqBbuOoyjhiBdZjWjwRyXwA21qXS
	 aZ+iDyB0clwytnxDyQfWqJvSx079urzrIFuUigVcLR7KjlXc27OuVBcycCrsN3GUaQ
	 L6SA16MSPSFshxUoLTrX2iF0BOhjX0YtvfVqcVmh9yh8udRD+INkBVYJaf7t0s1CSo
	 PUeX12SdjrKXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 641ADC4167B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167223368740.14870.4179578052625908503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b09a1d5f80cea45d11f9d3d267c7d0b99dd24b99b31f6685a9b0288eee76a6b
Date: Wed, 28 Dec 2022 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672233687
