Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2B11BF1B
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 12:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E139BC43397
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 12:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692707048;
	bh=KgVeg/ZI6Dd+3i0VcRJ2L+vNOKwZaRVJB2PD5ty+lxs=;
	h=To:Subject:From:Date:From;
	b=N1ovy+/AKmRggvnAZlOOYpqese1jdJ6CKajI8mAgshUjtWP6IlTWQwk9qBxr+B480
	 hRs02hejRBVx+oeBDdX1uyCU9tkNeRbBLmG+LajlJci2rikFRLsF1apPWkA8UTKy4C
	 4FP3N68VxZ/+LzfgfYA1YDCyX6N85XfxNPunI00oGKC8hpLUoCwZOIQKHj2RbrDA3n
	 cIBxui2GhEavQDaGvoEDOwNyUC1EdDbOz4Rg8Ixg1Cq8ETvuVDhvnz+8XEUHCcDk3r
	 5LlYu3qFKuxpgBhCedcfOSsb0Ib1TQEEMoXVbG/BWJ4/ffenyoio2XvOS26t7f1CJC
	 D+dZp4rsEEFkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C55A9EE49AA
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 12:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169270704879.31464.16961447808742265935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3632a21814874139250967e2b24db91b7ab1888e40f5b5c88c9834e7a0aeed2e
Date: Tue, 22 Aug 2023 12:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692707048
