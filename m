Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD06F17CA9
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 756DDC433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667995254;
	bh=cx4YI8PcrWVksojztvY2REG1mPgRIWLtdgMmLID0Th4=;
	h=To:Subject:From:Date:From;
	b=p5WRvRc/zT8z3X/by2Qc9GDZ5mCwv2FpgYq2nGDs9Fjp07tdUuf7l5rs77C9V25Y8
	 18rDoz9Ez1RHhItwe8iuj7ibSFTunqjK0ugGrFVb9z4typFqLZ+fvjsBNrTU8zmtrC
	 1y0IAPHqXg7/85rZLmE1Gp6TvGNzxx0FCwb78YuR4raLntoIoCAeWiomQFOWVyRlPf
	 ABJfU+Sds/cHgkfW2q5Fm8uYMPRBCIbTZ0TiYFPJts8cLrdH/O14bB4yZzjog1+vtI
	 qEUNVGHa+NaP/GAtTUqTk9iL5WlRtV5cdriroBFupkstGY7Kqsyk86Te/w6zoq0nR1
	 Re82915dv5soA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57C2EC4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166799525434.17038.12754872943847735892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d205eef060528b884ff56d58f17f471b5138228ea42b45abfd01131ec553e68
Date: Wed, 09 Nov 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667995254
