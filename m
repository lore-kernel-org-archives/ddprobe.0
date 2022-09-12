Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF4B29AB
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B9BFC433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662993653;
	bh=SGuWDfAfoijb4lyBaZMtQ+K4LVYZyxuvmnzz9c48ck8=;
	h=To:Subject:From:Date:From;
	b=HtFcn7XEKMZMdjhxX6UXapvqhuYeJ+j8HMzAtnq3uC/tAxFr09bAq7qMrdkVhqrRa
	 qmoY9nbFX79b2NzKglc4+cMIQNQ2lbbqxeWewYxVmeMR+7RjD9sRboKwCckG1yayNY
	 kNkb72hwkB8CqVkJN6X26709ExSYH+gIlmQ3n0d3mMUn6pz5gpI3+Gcp1HtxoJb5ST
	 FTDTirTL76IM/8Z1MnH7KBfCkXSXxxKMASI8WpOwjeeGhXFn1FmsEESgTcd+ksBx9J
	 I2ni/kJosAN7Ao6diGyD5YaldCAZkTTFXc0s+xmRAc7XLMsWlBFkTDrEv4WrAb431O
	 o1VmaP4i3tIhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E78ECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166299365333.15905.3476807556135551009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b9840ba5fdf9519a2a2894ae8bcc8f0931de4f9b029885c8a24a4797cb1389
Date: Mon, 12 Sep 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662993653
