Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E3C637
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9360FC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672810887;
	bh=/46Q/0CKXemq/7BuJfOsaaSi0Fiyr8jagVH3Zw4m3ww=;
	h=To:Subject:From:Date:From;
	b=iuXmxz4oVXc3Hzu2pHxT4AAJXG17nWOoU+7A6iJYSh4U3KpyP/MUMg5KPnpJDgTHT
	 jEo4Z+iBxmKnT9kf4C/hARWi0f8WgpgX4ybGR3CGDCI0XGbthrU4FnD0SD6pSUVC0r
	 hNcmElzx1WUZlh3Sebfw1RCFMVWH8V1wc2fYFLMkhqtPearEjKniodHq6iwprCeMHW
	 VVYu6A9zPQ45FXjDfqPn0RZw0/wfpvz0LzCiIOC9hrXNh+aAmlJcjuLbmOxVmXql7i
	 ryna9+IDzHiFjs9pmxclaHuV3V3fwni9KmRXPbrkqLT7uskRJaAV555cPpyLYoYNWY
	 KTD17SNMD0vCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74E67C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167281088745.25668.6434695061376144987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232164aee2608cd607cb654d6e6bb4e913ce8aae8ce7ed5a89f4e7b49c735c98
Date: Wed, 04 Jan 2023 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672810887
