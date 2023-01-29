Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543EB20EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 14:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16FFC433EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 14:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675001585;
	bh=QNnHalVDjPG81QYHh3qo/bEQHVl952EWJFBk3TVrzfg=;
	h=To:Subject:From:Date:From;
	b=nh4VfSCbulYG2U8iRKeOe1pVgf2J9+tpDVSIPAwQMtBXr1w7yPyk01ptuSp4KuFZK
	 pcblqOaSLot2zDarFsLNxXV9kCqR2f7aoS/hEe9NndM3gYIVUfev1PRfEPpH32S9vA
	 1AS5TqHmEODjwgNSwatF5MszsFEh84Il7K2MjpQClmzntrx3ETcmyGjjYJOs3pL8Pa
	 yhJ8nFa7EPsX9+5k3KqHyZnrcEjOGlVtXjQ90opYWa0x/tiuRB4Ee3bwvrkvuDDdWJ
	 zh7kCDtAiDinoyhwgnFRkNjx6fjqITohSrfWiTE8j8arDf5YXBIoxOAicAAm2uxjWM
	 TluY+2784cQOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C49F0C05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 14:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167500158574.13100.2109522712370339361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce660fe144f8dbecdf0268b5e39b0b982c45e958e2cc3ff560fbc9a3d15c193
Date: Sun, 29 Jan 2023 14:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675001585
