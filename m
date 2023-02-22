Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458431FB5
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 07:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E79F8C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 07:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677050465;
	bh=XE1MY8NUq8fHAzdZNDk0TMR21UtEjbafQXTyRH3qsAU=;
	h=To:Subject:From:Date:From;
	b=aKdGvoDdYWCxst/dlP0sUDRH+8oGAqCyRPM2pdR1z+ELdoRiE3GmKxw9e6ele4KvG
	 Vquf49dtLAR9K+MMhn8PsWhoQ7IWSa2fAuRa3Vk/Vhm/hCbY8Q20vbZKihSml4fOmq
	 MNUO4FsycfkWPOZSBwlS0IaCkMoyzNSyfMKTod3qeGKerYBQhdcmlNOausrYJgCh8H
	 4SHMdY/ZMmrYKEQC2m8R1SO7QCdB3mNkj6TexewLUENHu4U4GCc3CZZ3D6b8FQHTjk
	 Y5RcRccI/kjzC7PdKR43hZ0k0nrzv3LjALNzrVIYkzZ1H135lPFZxTk1wf9NygDYNs
	 m4P1FEJuw7XHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C77D3C64EC4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 07:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167705046580.16253.14046646527871694796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f143821b3f296f6b61644f30499b535cccbb11cb5c285375be485f82d7e0568
Date: Wed, 22 Feb 2023 07:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677050465
