Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE77A20
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DBDCC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670683287;
	bh=7FT5JWYKvPkcYPsUkOIVrySpOYHtW8cMbi+iSoaBYD4=;
	h=To:Subject:From:Date:From;
	b=UeFxE1iqG+GW7ZoVxympfsk5nRQ4EFoerIflhjcMYmq+bzZew56+ZTOhM8LZXzi4c
	 j2Sa3PZUa3M+f797ik6x534teaE5VLLodWXgw6MBUZxeQDl7jTcfAPtP/syh/hr2wL
	 mqYS7TMY/MFvIwMYkd2YfG9iX1cParIvxn+q1m/DGe7P6AvEqCfwqjy4MBnxyNoR74
	 U7lRPS08Ja3g8+MCOnAB0Aot6qQawvk9F/VeENpZ7TPnM7o+Hb8CZUZBg4vMgApKN7
	 17X6AcqxIc+eRYpvmIR/Sab+3COUkX+OAdMdN50cKixo4vatl6NSzhiUvLJmbLbxnF
	 omfjeyIMPVKzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FDEDC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167068328741.17275.16335152314554588817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d2ed42670e672446f290760352ed26ec3438229a14252807c72fe65d4a857aa
Date: Sat, 10 Dec 2022 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670683287
