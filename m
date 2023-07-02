Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6A7361
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 10:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B35BC433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 10:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688294049;
	bh=ej5kZQg5KgAZEi/J07ZlzKhcyanWE9tvuTGXYAR+eGo=;
	h=To:Subject:From:Date:From;
	b=YSn7Twq+GggQhlG1DOgzAN/2rSFALhxzYNR/+t2r+dV8Nk/QIkbSMuDYT+dkPftVq
	 3eADHXJvxQIBEGkHnUDAvsnCq/6OWKlCMfyeoSokdnZsCFiDZKcE56dMppz51GDjDc
	 zoZhw30M2Pe8upvjbmBa6pseapOuTACQvNgjwc918AMGrxKpK0RRkUOkUtzOC/lrDa
	 Hy+5TjWR5T0l7zCI4luB2pvjyE1+m1Cai7o3dyClVI2pm8T0PrUoJ4ecjU4ce5xbWz
	 PfZeNq+gxRjxBiJZoUTuM83IJl7WtXP6upk9FlUx4ZPmt8PZOsJCsksppJhipwGYSs
	 WvyGKpzE9UOnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDDDBEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 10:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168829404885.3933.13004766855036792691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a690dad8c09905905356d23f39af9e5c8802c73559c7ed4caf713114ebe8c9a
Date: Sun, 02 Jul 2023 10:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688294048
