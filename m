Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534EE7C
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 22:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEA6CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 22:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679264106;
	bh=VfTaJ0yEpIR6SyRc91QC4DKOtdTAtiC3iF1dQc6piAw=;
	h=To:Subject:From:Date:From;
	b=phlfoxu+NoNctCsLGUhZfr+pmi+5Uc3VhgH6f2mTABhCLc5k59j0My5ARtL1Uv94+
	 rr0Nt+TZ1KTQ3HhV+zaWYUyfYNbaKUAyBVzEfqweF0yynxEj2XpgKX7uSYbIwn9EJ+
	 Or/U4SHzEjzdayapQsrYjhINQLb7Gk3oh/SYN0+7jiQz63NV8P8w3Ocs0fGZXpc8du
	 AMoz3U8X7Ao37tBJRiG8d5hXSr8hEgsiRubkKIeMpXFdYkFZPfPgBwtmAJPNZIvsK7
	 bg2rEWioo7InqBOl1AH6aR/cMEAYfuS1V5Mb/8vReyATW3sXXZu0pHWquwoMhPuRY+
	 MRCOIkwozW4Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE6EDC7618A
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 22:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167926410581.16874.14609217585202670390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68350b79dee9c8350ee8209d5983c1c199d2e1af90f2a862a4c86e0fa5ad77db
Date: Sun, 19 Mar 2023 22:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679264105
