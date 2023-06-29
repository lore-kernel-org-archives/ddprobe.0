Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93FBE8489
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 23:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5483C433C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 23:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688080988;
	bh=K41x5lO4tTYfBmUNd0hyMgXJfK5J7nkIaEtQSvmIiAg=;
	h=To:Subject:From:Date:From;
	b=l0l8Yn4c7/1uVEnTIxPGNauAugrWvlCijDbLwPCrFHP2DHniiTJh2M6AGUfuuFEbK
	 1boGwbqn6IoC4hMEpm1m6xaeQvn/IqI5Dqf19FX4ikIxboDaMOGn+faeU5ACJo5L5C
	 8HEjg88yMyW+vFLv7HejKhb68iZE2jHK94TdlAWPodahtQ68SaTC2jLJGJJAaZZPMA
	 QfeDB4vDkqXDHtafPs+DiOnEY8ikpwIRHhybspWjGQHWctXv5n6J+EFIWgjL3HgTml
	 dZF+fYS4by4RCqEl1qXWwPmMYqK+9aTvkU9wc2J+uJpBB71mF2anEqfFXFuTwaKBgP
	 fH2GL0fPwAwXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EA2EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 23:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168808098874.4782.10973534960763274175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c5b31c2b9e41c7e24af7965dc24301dcab88a322c4a86e14204b7e035b72c1d
Date: Thu, 29 Jun 2023 23:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688080988
