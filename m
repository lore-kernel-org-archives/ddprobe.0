Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254FE10785
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AId/dYMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90872C433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703459896;
	bh=ETVEgzS5Y2vYg+Zv32prcYCoyfH3O3JhC7ahKFXS0V0=;
	h=To:Subject:From:Date:From;
	b=AId/dYMlptNq4+Bql7j5loQXmzD+J3FGxkhtbIiVORBMswmphi0d1r1MgIqe2xn9q
	 L1qHqOQotpATA3cZEdb9Q03jGMdCaSw0j7HuelpKUAfytCq7mnHcNqTLgKvtvnqfXl
	 yTIA42R4ulphaC1wI0zZaZ4UtvxhRXjamoJ6G4vBeCX95a2Yt3snLGGkerM2v91JOb
	 lN2B11Mb3tny/8rMDAmBO5yHMqdY9ssa5d2YRhngLcy8Aj0TSeE9up/HvejCsy7i9t
	 L/dCzBwDbkNbej+pOHd93JCb0S8SzTDZmKCR6lSVED7JbelppV1XUGA8ZXC5ZYOino
	 19oQmcW6VsBgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 714E5C46CD3
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170345989644.32286.10134943693081952128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275d0f3d9feb0e7218a3f8cfa640887336a53b105540a8cd8642f11e44c7799e
Date: Sun, 24 Dec 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703459896
