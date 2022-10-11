Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8A2D3207
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EFDEC433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665490853;
	bh=hsm3lQclRQG+P3wNiQmWQheUtULMS2IMqIu/1iIwt9w=;
	h=To:Subject:From:Date:From;
	b=NWP910ymszADJAXFygEugcQq0jAhgQG1GCegl+DUeQ7zEqXBHMI1gGS5Uz0yKisHt
	 HhI05gYrrd0fYJ2+XFUtew+x/7p2MHuTeWJbME5kyEQWw/uCZVh7zWIpYSgEJFc0z3
	 NV1Htq0Yhe0U51omAvQg8qcsmsbHtcOnyBioL41qltRJAdOm6I90G8Zjgo1R6HPeq6
	 +H5nQNaRrT1SpTPmMt/890mriT81rzCs/77Pj61RU2cEm3TOdR3/Lfg8SJs9GQmNdN
	 FK1gRe6zeHMVSpdUtZ1kXR1JFCR2MFXK1qJ0y2qAR0rsWQWS0G5ZdKtOX1WAxcf24D
	 JWaBwRKSMaefw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521EFC433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166549085332.23412.5825741771170660436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf7bcd69178ccbcb837717e1c2def0db9402132c9fa05db75d2fd51e354cd97
Date: Tue, 11 Oct 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665490853
