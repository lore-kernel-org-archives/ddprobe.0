Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8CB22F31
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 10:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77181C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 10:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661768452;
	bh=Gc7CBdiIXqLm/BYQGQYtCKZ5mMaLKyCQwPcriXGM4rc=;
	h=To:Subject:From:Date:From;
	b=Adgcj2/z9IzQjKIPKPlU3dl/6d9sOi3KpC9OBLD+dneBJ9cwQDCyC20DaEScIVi7Y
	 eKrHHQvTT1THsGSuxvdhPV8FkizlTg7/+010UXLtd7m9+0hzm1TYz9fbYAbXMQch3x
	 D48X8841S7YkbzIKaJig4cWBvEKSaqzvTo3cusZAQlEc70hUBN56Qk+YrW6sgxMJHf
	 3Zpq9ZZj9faBm2W6yMCu0RbVdT1/gHG5ZuQX058fJkLLM4Ken+FAfR+EgmZHM0EJ5Q
	 4LF7YVGOoJmHzSbcbtca4gC2oD5/XAMs8dycSw9nVxKLqj7LvK0tYIEW+a+Sg2yUf8
	 l3FKNJryOZbMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57CF2ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 10:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166176845233.26076.3130250124144660883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d810462583fc9529d6cbc82e3bf1c508f0a584393f68cdc11021c9bf725bec85
Date: Mon, 29 Aug 2022 10:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661768452
