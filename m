Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E12518C04
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 10:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2192C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 10:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686564785;
	bh=yH68hDF7lI8+PybqQg6NIi2CCwLlf5aCEOL+YuNI9B0=;
	h=To:Subject:From:Date:From;
	b=B9GGhwppx7Y65WJhA5RnX5phuP/jwB2dK8C1FIOM+ai/F3lnNVOSTfZv9fqZCVW39
	 D+p6DUz8MjYIN28V1BJtHtMM/VmZWy/+uSDEv1WkJVP2b+hf6iuf/HptYCejBRlmqn
	 hXV+EdVJHRogLiN49wfJeoKCCxd5trReSDWsTns0I7X319ctuunOnxJImezWkp9UWq
	 TC1AUs+cOhzEdTAzyh2rn3mmeZlV6CReXvEUB2//soe+4EPZwzWBaUOB+HD8+Een1d
	 Itnz+WQO5TpfXhOiR/2ofogbE9Tw2kPGL9TCzJOjUi2tfK+Jddh7sfGiHymldaS9vl
	 kl89/loqD35qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C9FC7EE23
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 10:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168656478574.7183.13167523986207878209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db9c528dbdb8705cc9dc0c46807e41d2ede8620ba98b7c6d31cd015eda32c4f
Date: Mon, 12 Jun 2023 10:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686564785
