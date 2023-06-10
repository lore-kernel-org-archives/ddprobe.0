Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C6E9BA4E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 12:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3F50C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 12:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686400806;
	bh=PcR4Caw9AcqjZXuEv3DJ60wq7dHfe1rADF4N7hVkKgY=;
	h=To:Subject:From:Date:From;
	b=RnpaYQGhJryY9cwhQURbn4oDuO6krv3+nfKx3gQP+pxDXWB6AVoHaQmCCTTUPjZZJ
	 E4ZZPcO9aeZml1g/bVu2Hl/gpeEyNv2EwEfNbKNrCS4zBIHB/BkSy2mkRCVIfEMG1Q
	 86Dgy1ru3rjLP93capIjHXB9rb6l1jrJAW0+SaGgDUqwt7UGkpGmhR8sskUGRTaLwn
	 taJptYWwfnuiq4vGLRuOztfMqkLDIsuiENggnzg5ou/AKNasnZPx5jdHSTQZwk4d1Q
	 xwjLP0gEyIXNvhturuxlGCMUgUGzOWDksPYToOlSySELCuTdrDDbJcv2oQ4Ow9EnfX
	 13HgyigiHwGEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F84C7EE29
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 12:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168640080578.32513.7074523897480003645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f504d3157ae27b5684880122e9f138724b3311fad3c6e48e322b99e87c3e17a
Date: Sat, 10 Jun 2023 12:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686400805
