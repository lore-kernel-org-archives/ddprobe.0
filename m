Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03B85C83
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8304FC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663339253;
	bh=IE2jSGZiemLHMCWu1tzh+7kiUa8MWoK5pj2dI3hLCjQ=;
	h=To:Subject:From:Date:From;
	b=egpcJ3FaDukbtk5vI8/LryPugp/2ZQ2tEVIV0bwqPAgOdCRg11GmoLPMJGE4Ru8Hy
	 B5lZ4UMeZ++aRNYe4U7URd6Q3I21PODxUtVUiCDbGOO0PxNrei06wpi3GggNNzrqLB
	 3yIVbELVsaROBvI5Jaoo/M7XZLg5fSCIFAmzKESCetI6jCtrxLg7FLJabG++9FakOt
	 Fy3IgESp83qwmtSLfX+ZDz6+5EY7SXD2pSTMXdDsrY4YwUOOmWm2yYHkQPJ8uHyqx0
	 nhDAftCeJl9h88pAuCUbIWhXrQipPGdZ2ah9njnWjDik31e7n4AFJMs2irezSgOkdH
	 O2/xFv85CGyDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58304C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166333925335.22109.9796056160552779641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e118be2beac8b868aa227c7ce617f0df2569ee6786210b7bbdf67439ea235b4a
Date: Fri, 16 Sep 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663339253
