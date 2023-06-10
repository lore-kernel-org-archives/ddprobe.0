Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7366D1FD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 09:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A6AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 09:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686388145;
	bh=QPQ234UMfIRLo/zs/EnPKItioG3BqRPYHp/6v4PjqVk=;
	h=To:Subject:From:Date:From;
	b=Ljs190l8KGQhs97nE4K6NQoVSNW1AQYX8TcCiARKf+3uuMqYmRGtr5KQfe4qei6pD
	 /Ij4gDpkx4lbPb9OvzWHC4lCtc9rNfbJdnT+cClHPYIuFwhdlkDVKy4hCSTomwByRQ
	 nJlE1J1t+PiLmhpPgNQVg6axf4fFOr5YeUY3c9RB5XMgEaV3JAfChBjpE43s3Xn/PM
	 es7J3MjpyhZ3U85Snd/C/ehMWf9Nvs9YIduxE/3pma2sOtArkOEJnFjSiJsyDB/wsf
	 hm6RfsLHc+2UtDclEWqazanNlSyL0mU1j+t2ezroMN7MXwMFw1pxDboFODOWSzu7Eb
	 5MQt/7dEHeaVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0013C7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 09:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168638814577.20745.16054874616139134918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aefe9a4552ce27b5943fbe6c266eb586f6d4d52f2e8b7e68bf7aab1d7e1c104
Date: Sat, 10 Jun 2023 09:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686388145
