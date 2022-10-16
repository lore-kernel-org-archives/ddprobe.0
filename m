Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB50C2568
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D38BC433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665958253;
	bh=waT5iR2d0tNtLKsU9/9RAYYrRQbhO9u0FDzlUHYs5Kc=;
	h=To:Subject:From:Date:From;
	b=t1jLmzeRVGp3kHUz8FqIExjlVk0f8j/zXv3zBHqrpGQWECegPqLnu2ApsZFbMhCS7
	 dQm0z/eiasMs+m6MdRm3ghT+f2GSz8HbFotuuHYicZfPefYkqejqxJa4MqK79C+jbX
	 E0UffHtRndO/lVE2lI1Uu0FF9MvdLIxtFgswMeXF+uTOsUrRKFmcLvZ6XXXgYFTR0Y
	 tjXDnFzbb2obSlBBz4rf50dcdaMeOTyiWvKYP/73EgdHROdlqRfSZTc0QSRJ5c9kLb
	 fCdGMVVPUroboHKg6hlG67TSvAqXC0Z2SnOoWr4wLxdB28gDDZKPZnW7i8yVFJECc2
	 hgdy51EAGqdPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52702C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166595825333.28254.8368667539797756996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33eb8fdae845d63934fa3bae5f98f4f04f9539c646cf2c19229e41f8ca811d56
Date: Sun, 16 Oct 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665958253
