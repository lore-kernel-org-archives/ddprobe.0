Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463337C
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 01:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E04BCC433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 01:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680659225;
	bh=ZOLpbE9KqhOaNBRX9nhvXvpgBBa3jdDnNrmHGn3w3ds=;
	h=To:Subject:From:Date:From;
	b=ctCK05P3ZA97DYdE7KK/VhoIS5X3KRPshPeaWMlLWudWmtBLOmiEJ+3wwjdIvCHIs
	 7fQxF9eULrCbIR0xYfgxeYiyLie7ZuM4Zc/bcEc5M4EYp12GbqVZu3p2ISeZ3CweV0
	 nTuigLWS+8larfz97cRLujRslnCnJMACpnB25OVBn6t8BmSsuq4KP3ugIj1mxNJzyo
	 p08eVXD/hz6kPUCfcefu6FGZDj+DvtJ5AhkuwgAzb27W8udAcEZh8oYSW1u5Ef/8Hj
	 5tUBchN2K3EQ2bf6kn6Fq3Kj8XISbUpP12hTr4DktBykO1TxX/zw/FXcQRm6Tb1i4A
	 Lkxbg3thb0EYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6E33C76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 01:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168065922579.10624.13464044377312877593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20851c8a6c12db11e92fd180eb1c2f3c0d078820ceeede1c1b124a80b3fc261e
Date: Wed, 05 Apr 2023 01:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680659225
