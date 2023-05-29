Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4176A3D60
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 13:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF91C433EF
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 13:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685366525;
	bh=CgqnHT0yEGEs0sO5fVNitq1NFMQNeMG/XlU52u+sXU8=;
	h=To:Subject:From:Date:From;
	b=nvTQuH1K3IECip74qqfC9rvRHW8nhXJDw/A8VNAHgy/55pSyqNlo4v0QbEFcv8b3P
	 bk5xGCTCGXMY8nsDtO7lUr6SZkvZIrPPi/u/UTjpTIWsvtaqekYTkk6s73zl+sq9SU
	 TcTkj8z7Pnd89jB+TFSwEPzvFqnoG7+juO65ZNgFq94gHHuNdwNqFGJ64MFnT8RTg4
	 LkCCc6NiNJRHAxrg1hsOp95jHo88G5pL6bVFRuVZlI8vz9videB5p+GcX0C2Ih+2u0
	 hBbAYOaF+ubLelvVk+4x0xy6sjGMFmt+sfqNR4zke2ZGQCW8jOQwKvE01MNe8rzTb5
	 dXcpafQLBG1rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B407BC77B7E
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 13:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168536652572.23098.16096628671195121923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ab23e5f23a435cca2b37d013b7d80d4a4ccaa843167ccade98c805a94701a5
Date: Mon, 29 May 2023 13:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685366525
