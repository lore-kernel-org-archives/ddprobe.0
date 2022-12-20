Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C944A813
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B1DC433F0
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671495687;
	bh=+QawVHI6BHL3Caou3Xkxf/xQS2/BsPm8Q+Xb6lICicQ=;
	h=To:Subject:From:Date:From;
	b=TtVqgJw1qaU3SGHMGRc7ZjrEst09zbhqP9jAO3rYRATMJqlvCO4FAi/Yw12ddY+Ri
	 UNur1YadwYmqgyL9JIAZ91VZ/dDwMRl9x1COwQHZmXnH8CDOC4qNuNGRXtxY4MS6vK
	 vtcc+RlbL/TM6bURXlRw/bdxHuicmBWPZh5a75BlpIssyLTqjwVgRfxtkgyRvMwu1M
	 f9LCrVzvsXN1RUWNoFxmoC04jgO+82+SqPmDrLZOaskHs8MUnPeeVeSiB2mxhfxy9U
	 6Dd8SpTXt8ZeDj1U77y/mzQXYwMr0LU5Jf9DVz+2updn9X8l7fCwaFOuLol4Is1zQg
	 1nhPmnS4g8Tpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E326C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167149568737.9383.12721052297870767816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b188457f8aea1df6fb499f04346719f2c6237cafa47e28125ba4445b3502358a
Date: Tue, 20 Dec 2022 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671495687
