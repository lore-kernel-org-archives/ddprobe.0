Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA12110E3
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7933DC433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671369087;
	bh=CbbKx8pnx+bx95fO4MCxJRDM495iK6gKia8/gBsZZj8=;
	h=To:Subject:From:Date:From;
	b=iGKUPTQSjtyD3i4DjTbTmpwpIbT/9CaBq0uRVUSrv6+2YHqLpVyfWe1fEEjDuNwC+
	 brVcVP9mXtuJHiT0YrYazu0qrjJIP7mleVTaPEWUYprgCkISxo1JFw1MyCyIbEF5qb
	 MaJ4ZwAUZkeyoIeQwIG46WYQJLBSKrLA8ODOnDOL3K3WthroYgy4PNB1Em9aRQNRxT
	 mHO4AE5u0yT+dw+oFirlLJuruPH1tVmpINDTx3trYyfQoinM6nlf5mH6ppsvwL5FZH
	 9MHNQaIt8pgcdXXPE7ppwsZ/5IETkfzDrPTMe38/48auhIEMzzj2v7K0qBKGbiTt4Q
	 YDXo3iSTTZP6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EDEDC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167136908738.17745.10745254253986501524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4aafa189bc0e5cbe38493a4b6a10945c7bac1adf7311913fab7acff745fc6d
Date: Sun, 18 Dec 2022 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671369087
