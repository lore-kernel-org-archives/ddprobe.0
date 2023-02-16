Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4608517D7
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 03:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1499C433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 03:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676516945;
	bh=Fk7n9ti2fRAKVTwImmi9YiXF2u9S1IMXZtv/Xpy5+1Y=;
	h=To:Subject:From:Date:From;
	b=u/Ki/PM6z2vpeN7VKwaOyXaOkJgKZJ2s+FPtnkgflTJEz0hxo2wIQ0YitkLYgnTjU
	 aHSojdlgqhIOXVKDp2n9FxO3UzYz2QBBHFnPhHqFucKUicJTGuj4GpPiZmWo67pc/v
	 LZt+3Uq1RpgolkKHrPtw2i81jOnMGWIIFchL4px4e9er2hkv5dpziLeF9XheSWm3z3
	 KQmqYH0gVbViPfqQ29MOLaPw0UvsvZigtclqKyK3UpWYZPJ8jngNaxOhohGQnUnhxy
	 0E/KKgve5282FmUqAvyx5YR+JgSbr6lVtuLqP4lgCWjiioe3dUhkV26kWlAZ16LTxu
	 dJcQ5BRgjTgqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C73C636CC
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 03:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167651694577.15394.13634919410621131986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d5bcc00e4ff85a67df670175a4c31a36af8ae08c5b532f498c1db6ab1a253be
Date: Thu, 16 Feb 2023 03:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676516945
