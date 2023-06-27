Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617B7A23
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 01:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2037C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 01:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687828988;
	bh=1OxNq7LEG/xbhLBiZu7QvG3v0BIV186TojuaetAk6PE=;
	h=To:Subject:From:Date:From;
	b=HJGZmowO8Sw6xpJOnBvJhuFpJuzqIzdymvGLZTPeh4Qrm6Y8LJ67aX+5GrJGUY+fr
	 8IS0fw1WeumyOps78PGonfZ2i7Ekp97MQMjlBRjf7nSO2Jg1kTnflkuLvsVS1H5ZcX
	 RKWRus1Dz+8hbvS66aEHYkU3P/zAcwzftDrYvjCczXV2M7Ya4o9K737J15wUqnclcL
	 bfHaKcOYwUgsFNk402iAnF6sNgggXqWKnKPWf4jXuRp/i8MOyFYdXdsLA1U0iDnnCY
	 i61DT9RrHmmjDgER3spnQ1MbMDRAyOFGqMt5GC+NqPLD2+1VyMc51dg5+HefnMjoRF
	 46GnQckynsJRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07A4EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 01:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168782898871.21625.7860053365628177768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8408eece4fff5118ade03c8fe32180f8baa83655b9a663f7e3b5b3afd1c3ec32
Date: Tue, 27 Jun 2023 01:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687828988
