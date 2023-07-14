Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4AE6AD9
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 06:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6161C433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 06:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689315068;
	bh=k06BpsZnChUgaKPdkFTi9BA3N6Pls7O6aKd1jOnN7Yc=;
	h=To:Subject:From:Date:From;
	b=K5gZHqDljIoY0aAjclX5OF7QM9do3enlDz3xIRAQUSJRHyy9yHD7SxS9lI+IqaNjo
	 kvWWRbsyTn5sqw9CKeMsdDpT54gB5+kTH1Ra7leHXQ2ivmlMkSb0BTfSXQrLPGEZ2I
	 m2R3H8s+dRhYPNCF6KqBBRV0YvgsAiVpJNrF6tG6l8Jc89onZcjKRT+8gSaEqy8Z5F
	 Ufng2okeDIyF0eD+s96N0PMnEN21PGVfZR3NvDfYKei4SuZrMfBAS4WwV29Pwt6y/N
	 iQKJrKrWp2VKomw4XODy/oVjD3pSjp27VXxN6sKWsXfg3tsDDBwF4nu+e11R4jnGOW
	 rMmTuyETeovMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A25EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 06:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168931506868.11569.5374089453513761714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e92b2b2c6785f272c9f2b14c913f0c1ec68db32df0bcff92064e1d22dda1b9
Date: Fri, 14 Jul 2023 06:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689315068
