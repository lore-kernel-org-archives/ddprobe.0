Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6716979CC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 20:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4861C433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 20:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688502368;
	bh=4J1E+Jfldc4ndY59Vsockee4y8wJh7hP5cAx0lhrZKI=;
	h=To:Subject:From:Date:From;
	b=m7Y5m+m3EN8Gwj0gwatD6KIAM8iMJvGzZmDfechfStl/WTrV/jrqcv36n1Iz41MtH
	 bJY/GlYrXx3u6BV3aQ4fEV9y3gBSDaW0tyhiB8AosPq6FNi/JMVoBTJaA+Hvs/fWIU
	 BicHaiqTYbgJ0H1rtcQltKOWudRMhnfoqJ2DLAK1cwMZQ04US9ThLxCeTygRIIlVUE
	 XCCcsdGlIremDr8dZsMzq+L1dq66Wro3reoCjLHUDrdIgM7J/2ivr8w+TjPUqn4agT
	 AZAiWYMbqh+hoHszSVjFr3jzRszdTddYjF1gIE+m7mN/wBRJS5vGmlxrqzDBnfzkv8
	 hb5obxNYdaRXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A69EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 20:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168850236872.12560.11895868130800044922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa1dd7a82ef51b549c94455fc1ab62e3a8fed3b78b61fc6dc45f78682d293fa
Date: Tue, 04 Jul 2023 20:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688502368
