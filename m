Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86B0D7F
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 01:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05B14C433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 01:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687655589;
	bh=E2VVSQk+iK8ftovkuaany2SdaNaNQJnoXYaljbf1Kvo=;
	h=To:Subject:From:Date:From;
	b=GSFLEC7EAv3xOFowFTLX9X2SiFZvxtLn6EAX88vkt79JknYWO3F067OnZUZ7bfAaB
	 q6gieDfa1Kt5UoKz02e3FgmHxU5uSfYhRYZpnavxN2ggFpVA+T08HawPQYXhkg/lGk
	 lpev6qM+CRez2mtPJu7uqsOIaV4Oy4UITThlW6VPyuB1hTCmav8L67IaVJ42x9cSic
	 sZfwQyWw75/qXE1tomxGxmubLoMHBEyaZSRIDvZ7o9BuF8wsJbWLmLm0pJbOYEDB1s
	 KvVvR65cO7ysfQ+fRR0WV8psOqyJqkuMzcHjosnBIdkmfNLreWENUMyy9TiC4MXwnR
	 nmAVpbSsj4Wpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D472DEB64DA
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 01:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168765558882.26361.6535446435318345604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdbff8fd8e1caa0f8536d6d1e932c31e8ce49825a96360b738bc15b6b9bfd6b3
Date: Sun, 25 Jun 2023 01:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687655588
