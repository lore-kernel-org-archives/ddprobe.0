Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F8B62F
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 06:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04CE8C433D2
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 06:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683698466;
	bh=N+fOB6ZErFpsLqfxFpRY6m/Dx3bUnjBk0lk/X3Fd51k=;
	h=To:Subject:From:Date:From;
	b=JmjDyExBB8NpcpVxn/2THzqn9nCyb4xFocDnqnTiGIBpvHZhQW49KhOFYS2VGbl6D
	 fL20P1tMDuMV1WZ0H4Xd6EnduCK7oNk6Nv/43PK5DlpRnGm0OIp9mdjz5H0fzkR4+e
	 IjZLFi4ecwamjhN02fScGKr2vEIOMV/Y4GfxTrwDYhOy0ehHfn++0Z0MZIspzXQ/RA
	 ldK2N7zC57DyW1q9WA/m5mQnUE1HTij50eTWeNLc2HoaEgx1/mbfCJ9oU96eNdQbsS
	 hJ9fwSTjBzwwDp47hFUv6XUf94N8/X4A0S1SwZcK2ZkgP5yiQ0ozoeZ1jbhotpIpsP
	 2xs4sWynIbmQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAEE2C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 06:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168369846583.26481.2573105736309778302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 879d2c765a5de0ca6cd8e9e15b7efd3e40ebe53699fde195599771e353c7d488
Date: Wed, 10 May 2023 06:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683698465
