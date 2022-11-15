Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC146AD5B
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 768FEC433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668525654;
	bh=5SQfHgssbnCeIe5sheYdYV/U41D+nqWk1sJoCvm8xx4=;
	h=To:Subject:From:Date:From;
	b=d333GROBUIlpm427EIVqq0DElzs17dFhKFW5qXSN6XgXcHO6ZD27dj7OO/f2jc8+L
	 eAi0Xp71siA54nWcNO3kehg2M+HeM3jY8kx0zgEyvxrP9mJE9RcK66wBu3EtqnMXnk
	 txPz6GWK4tTSQR+7gZzHrg315SGkF5/oMjMMwYim4qoVkS0zGTUUNtmkLJ9mKVj3BY
	 s/GRuNao9VEEfVkZSbrIYkLuIuvVlkAkCYfyqmZCbyCKEqemseZTtaqgfBbo7q3dDY
	 DdpgxBzYOyhopT1FsRvqeJBesRVj0KNVeIDL+DJwf2VLgpKLwFA2t5Ojz1t8gQpJwd
	 8n1jSx/lu7zuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BBEC4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166852565434.10224.15705159399733461621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee5310bbc9646365ebd81c11921d1f6d13ef2c058652e6e4a5557e84ec65afbc
Date: Tue, 15 Nov 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668525654
